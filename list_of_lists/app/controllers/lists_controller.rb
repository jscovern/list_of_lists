class ListsController < ApplicationController

	def show
        @list = List.find_by_id(params[:id])
        render :show
    end

end
