class WelcomeController < ApplicationController
	def index
		@features = List.last(10).reverse
		if session[:user_id] != nil
			@followed = Following.where(:follower_id => session[:user_id])
			#.order(:created_at => "desc").limit(10)
			@listusers = ListUser.where(:user_id => @followed.map(&:user_id))
			# @lists = List.where(:id => @list_ids.map(&:list_id))
			# @recentFollowingLists = @listusers.lists.last(10).reverse
		end
		render :index
	end
    

end