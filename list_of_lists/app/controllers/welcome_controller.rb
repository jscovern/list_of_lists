class WelcomeController < ApplicationController
	def index
		@features = List.last(3).reverse
		render :index

	end
end