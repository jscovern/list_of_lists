class ListsController < ApplicationController

	def show
        @list = List.find_by_id(params[:id])
        render :show
    end

    def create
            # binding.pry
    	   @list = List.new(list_params)
        if @list.save
            p "in the list.save"
            @list.users << current_user
    	   redirect_to "/lists/#{@list.id}"
        else
            p "in the list.save else"
            temp = @list.errors.full_messages
            render json: temp
        end
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
    	redirect_to "/users/#{session[:user_id]}"
	end 

private
	def list_params
		params.permit(:title, :description, :img_url, :list_type)
	end
end
