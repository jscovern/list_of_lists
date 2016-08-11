class SessionsController < ApplicationController
def new 
	@user = User.new
	render :new
end

def create 
	@user = User.confirm(user_params)
	if @user 
		login(@user)
		redirect_to "/users/#{@user.id}"
	else 
		redirect_to '/login'
		p "this is the user: #{@user}"
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
