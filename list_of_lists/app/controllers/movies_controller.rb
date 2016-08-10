class MoviesController < ApplicationController

	def create
    	@movie = Movie.create(movie_params)
    	redirect_to "/lists/#{@movie.list_id}"
    end

    def new
    	@movie = Movie.new
    	render :new 
	end

    def edit
    	@movie = Movie.find_by_id(params[:id])
    	render :edit
    end

    def update
    	@movie = Movie.find_by_id(params[:id])
    	@movie.update_attributes(movie_params)
    	redirect_to "/lists/#{@movie.list_id}"
    end

    def destroy
    	@movie = Movie.find_by_id(params[:id])
    	@movie.destroy
    	redirect_to "/lists/#{@movie.list_id}"
	end 

private
	def movie_params
		params.permit(:title, :director, :description, :img_url, :list_id)
	end
end


