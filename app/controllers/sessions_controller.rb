class SessionsController < ApplicationController
    def new 

    end
    
    def create
        auth_hash = request.env['omniauth.auth']
        
        token=auth_hash.credentials.token
        url = 'https://slack.com/api/users.identity'
        headers= {
            Authorization: "Bearer #{token}"
        }
        res = HTTParty.get(url, headers: headers)
        user=res["user"]
    
        puts user
        @user = User.find_by_email(user["email"]) ||
            User.create!(
                provider: auth_hash.provider,
                uid: user["id"],
                full_name: user["name"],
                email: user["email"],
                picture: user["image_512"]
            )
        
        log_user_in(@user)

        redirect_to root_url
    end    

    def destroy
        log_user_out
        redirect_to root_url
    end

end
