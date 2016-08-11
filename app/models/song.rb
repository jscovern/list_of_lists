class Song < ApplicationRecord
	validates :title, presence: true
	validates :artist, presence: true
	validates :album, presence: true
	validates :description, presence: true
	validates :img_url, presence: true

	belongs_to :list
end