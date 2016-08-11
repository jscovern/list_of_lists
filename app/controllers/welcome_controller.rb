class WelcomeController < ApplicationController
	def index
		@features = List.last(10).reverse
		render :index
	end
    

end