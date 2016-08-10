module SessionsHelper

    def login(user)
        session[:user_id] = user.id
        session[:username] = user.username
        session[:user_img_url] = user.img_url
        @current_user = user
    end

    def current_user
        @current_user ||= User.find(session[:user_id])
    end

    def logged_in?
        if current_user == nil
             redirect_to "/login"
        end
    end

    def logout
        @current_user = session[:user_id] = session[:username] = session[:user_img_url] = nil
    end

end
