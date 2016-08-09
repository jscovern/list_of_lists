class UsersController < ApplicationController
	private
	def user_params
		params.require(:user).permit(:username, :email, :first_name, :last_name, :bio, :password, :img_url)
	end
end
