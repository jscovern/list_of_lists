class Follower < ApplicationRecord
	belongs_to :user
	belongs_to :follower, foreign_key: "follower_id"
end
