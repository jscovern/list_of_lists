class ListsController < ApplicationController

	def show
        @list = List.find_by_id(params[:id])
        render :show
    end

    def create
    	@list = List.create(list_params)
    	redirect_to "/lists/#{@current_user.id}"
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
		params.require(:list).permit(:title, :description, :img_url, :list_type)
	end
end
