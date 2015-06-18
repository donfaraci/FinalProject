class Shirt < ActiveRecord::Base

	validates :category, :name, :description, presence: true
	

	belongs_to :user
	belongs_to :category

	accepts_nested_attributes_for :category
end
