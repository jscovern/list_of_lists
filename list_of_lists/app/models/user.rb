class User < ApplicationRecord
	has_many :followers
	has_many :users, through: :followers
	has_many :list_users
	has_many :lists, through: :list_users
	has_secure_password

#     def self.confirm(params)
#         @user = User.find_by({username: params[:username]})
#         @user.try(:authenticate, params[:password])
#     end

end
