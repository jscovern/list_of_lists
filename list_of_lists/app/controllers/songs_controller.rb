class SongsController < ApplicationController

	def create
    	@song = Song.create(song_params)
    	redirect_to "/lists/#{@song.list_id}"
    end

    def new
    	@song = Song.new
    	render :new 
	end

    def edit
    	@song = Song.find_by_id(params[:id])
    	render :edit
    end

    def update
    	@song = Song.find_by_id(params[:id])
    	@song.update_attributes(song_params)
    	redirect_to "/lists/#{@song.list_id}"
    end

    def destroy
    	@song = Song.find_by_id(params[:id])
    	@song.destroy
    	redirect_to "/lists/#{@song.list_id}"
	end 

private
	def song_params
		params.require(:song).permit(:title, :artist, :album, :description, :img_url, :list_id)
	end
end



