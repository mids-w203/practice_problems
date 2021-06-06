module SessionsHelper
    def logged_in_user
        unless logged_in?
            session[:redirect_url] = request.original_url
            redirect_to login_url
        end 
    end

    def instructor_user
        redirect_to root_url unless 
            current_user.instructor?
    end

    def logged_in?
        current_user.present?
    end

    def current_user
        @current_user = @current_user || User.find_by_id(session[:user_id])
    end

    def log_user_in(user)
        if user
            @current_user = user
            session[:user_id]=@current_user.id
        end 
    end

    def log_user_out
        @current_user = nil
        session.delete(:user_id)
    end

    def redirect_to_or(url)
        puts session[:redirect_url]
        redirect_to session[:redirect_url] || url
        session.delete(:redirect_url)
    end
end
