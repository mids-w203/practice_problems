class SessionsController < ApplicationController
    def omniauth
        auth_hash = request.env['omniauth.auth']
        
        token=auth_hash.credentials.token
        url = 'https://slack.com/api/users.identity'
        headers= {
            Authorization: "Bearer #{token}"
        }
        res = HTTParty.get(url, headers: headers)
        user=res["user"]
       
        @user = User.create!(
            provider: auth_hash.provider,
            uid: user["id"],
            slack_token: token,
            full_name: user["name"],
            email: user["email"],
            picture: user["image_512"]
        )
        
        log_user_in(@user)
        redirect_to root_url
    end

    def create
        @user = User.find_by_email(params[:session][:email])

        if @user
            url = 'https://slack.com/api/users.identity'
            headers= {
                Authorization: "Bearer #{@user.slack_token}"
            }
        
            res = HTTParty.get(url, headers: headers)
            user=res["user"]
            @user.update_attribute(:full_name,  user["name"])
            @user.update_attribute(:picture,    user["image_512"])
            
            log_user_in(@user)
            redirect_to root_url
        else
            redirect_to "/auth/slack"
        end
    end    

    def destroy
        log_user_out
        redirect_to root_url
    end

end
