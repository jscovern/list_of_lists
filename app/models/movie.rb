class Movie < ApplicationRecord
	validates :title, presence: true
	validates :description, presence: true
	validates :img_url, presence: true
	validates :director, presence: true

	belongs_to :list
end
