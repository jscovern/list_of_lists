class User < ApplicationRecord
	has_many :followers
	has_many :users, through: :followers
	has_many :lists, through: :list_users
	has_many :list_users
end
