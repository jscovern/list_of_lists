class Rando < ApplicationRecord
	validates :title, presence: true
	validates :description, presence: true
	validates :img_url, presence: true
	validates :link_url, presence: true

	belongs_to :list
end
