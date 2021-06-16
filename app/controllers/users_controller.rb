class UsersController < ApplicationController
    before_action :logged_in_user
    before_action :admin_user


    def index
        @users = User.all.order('full_name ASC')
    end

    def instructor
        @user = User.find(params[:id])
        if @user
            @user.toggle_instructor
            redirect_to request.referer
        end
    end
end
