class Product < ApplicationRecord
	validates :name, :description, :image, presence: true
end
