class FollowingsController < ApplicationController

def create
    	@following = Following.new(following_params)
      	@following.save
    end

def destroy
    	@following = Following.find_by_id(params[:id])
    	@following.destroy
	end 

private
	def following_params
		params.permit(:user_id, :follower_id)
	end
end

