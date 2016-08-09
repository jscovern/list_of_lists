class UsersController < ApplicationController
    
    def show
        @user = User.find_by_id(params[:id])
        render :show
    end

    private
	def user_params
		params.require(:user).permit(:username, :email, :first_name, :last_name, :bio, :password, :img_url)
	end
end
