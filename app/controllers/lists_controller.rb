class ListsController < ApplicationController

	def show
        @list = List.find_by_id(params[:id])
        render :show
    end

    def create
    	@list = List.new(list_params)
        # @user_id = session[:user_id].to_i
        p "this is the current user #{@current_user}"
        @list.save
        @list.users << current_user
    	redirect_to "/lists/#{@list.id}"
    end

    def new
    	@list = List.new
    	render :new 
	end

    def edit
    	@list = List.find_by_id(params[:id])
    	render :edit
    end

    def update
    	@list = List.find_by_id(params[:id])
    	@list.update_attributes(list_params)
    	redirect_to "/lists/#{@current_user.id}"
    end

    def destroy
    	@list = List.find_by_id(params[:id])
    	@list.destroy
    	redirect_to "/lists/#{@current_user.id}"
	end 

private
	def list_params
		params.permit(:title, :description, :img_url, :list_type)
	end
end
