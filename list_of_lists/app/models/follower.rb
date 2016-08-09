class Follower < ApplicationRecord
	belongs_to :user
	belongs_to :follower, as: :user
end
