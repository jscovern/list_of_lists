class UsersController < ApplicationController
    
    def show
        @user = User.find_by_id(params[:id])
        render :show
    end

    def new
		  @user = User.new
		  render :new
    end
    
    def search
      @username = params[:username].downcase
      @users = User.where("username LIKE ?", "%#{@username}%").to_a
      p "the username is #{@username} and the results are #{@users}"
      render :search
    end  


    def create
    	@user = User.new(user_params)
      @user.username = @user.username.downcase
      @user.save
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
