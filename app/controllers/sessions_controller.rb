class SessionsController < ApplicationController    
    def create
        auth_hash = request.env['omniauth.auth']
        token = auth_hash.credentials.token

        client = Slack::Web::Client.new({ token: token })
        user_info = client.users_identity.user
    
        @user = User.find_by_email(user_info.email)

        if @user 
            @user.update_attribute(:full_name, user_info.name)
            @user.update_attribute(:picture,   user_info.image_512)
        else
            @user = User.create!(
                provider: auth_hash.provider,
                uid: user_info.id,
                slack_token: token,
                full_name: user_info.name,
                email: user_info.email,
                picture: user_info.image_512
            )
        end
            
        log_user_in(@user)
        redirect_to_or root_url
    end    

    def destroy
        log_user_out
        redirect_to root_url
    end

end
