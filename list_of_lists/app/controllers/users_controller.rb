class UsersController < ApplicationController
    
    def show
        @user = User.find_by_id(params[:id])
        render :show
    end

    def new
		  @user = User.new
		  render :new
    end
    
    def create
    	@user = User.create(user_params)
    	login(@user)
    	redirect_to "/users/#{@user.id}"
    end

    def edit
    	@user = User.find_by_id(params[:id])
    	render :edit
    end

    def update
    	@user = User.find_by_id(params[:id])
    	@user.update_attributes(user_params)
    	redirect_to "/users/#{@user.id}"
   	end

   	def destroy
   		@user = User.find_by_id(params[:id])
   		@user.destroy
   		redirect_to root_path
   	end 

    private
	def user_params
		params.require(:user).permit(:username, :email, :first_name, :last_name, :bio, :password, :img_url)
	end
end
