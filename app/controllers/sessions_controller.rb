class SessionsController < ApplicationController
def new 
	@user = User.new
	render :new
end

def create 
	@user = User.confirm(user_params)
	if @user 
		login(@user)
		redirect_to "/"
	else 
		redirect_to '/login'
		flash[:error] = "This username password combination does not exist"
	end
end

def destroy
	logout
	redirect_to '/login'
end

private 
	def user_params
		params.require(:user).permit(:username, :password)
	end
end
