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
    
        @user = User.find_by_email(user["email"])

        if @user
            @user.update_attribute(:full_name,  user["name"])
            @user.update_attribute(:picture,    user["image_512"])
            @user.update_attribute(:slack_token,token)
            
        else    
            User.create!(
                provider: auth_hash.provider,
                uid: user["id"],
                slack_token: token,
                full_name: user["name"],
                email: user["email"],
                picture: user["image_512"]
            )
        end

        log_user_in(@user)

        redirect_to root_url
    end    

    def destroy
        log_user_out
        redirect_to root_url
    end

end
