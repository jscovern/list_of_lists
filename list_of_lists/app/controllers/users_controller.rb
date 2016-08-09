class UsersController < ApplicationController
	def user_params
		params.require(:user).permit(:username, :email, :first_name, :last_name, :bio, :password, :img_url)
    end
    
    def show
        @user = User.find_by_id(params[:id])
        render :show
    end
    
end