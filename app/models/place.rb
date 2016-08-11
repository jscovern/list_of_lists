class Place < ApplicationRecord
	validates :name, presence: true
	validates :description, presence: true
	validates :img_url, presence: true
	validates :address, presence: true

	belongs_to :list
end
