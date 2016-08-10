class PlacesController < ApplicationController
	
	def create
    	@place = Place.create(place_params)
    	redirect_to "/lists/#{@places.list_id}"
    end

    def new
    	@place = Place.new
    	render :new 
	end

    def edit
    	@place = Place.find_by_id(params[:id])
    	render :edit
    end

    def update
    	@place = Place.find_by_id(params[:id])
    	@place.update_attributes(place_params)
    	redirect_to "/lists/#{@places.list_id}"
    end

    def destroy
    	@place = Place.find_by_id(params[:id])
    	@place.destroy
    	redirect_to "/lists/#{@places.list_id}"
	end 

private
	def place_params
		params.require(:place).permit(:name, :address, :latitude, :longitude, :description, :img_url, :list_id)
	end
end




