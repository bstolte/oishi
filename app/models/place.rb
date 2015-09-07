class Place < ActiveRecord::Base
	
	# Karminari setting for items to display per page... 
	# https://github.com/amatsuda/kaminari#configuring-default-per_page-value-for-each-model
	paginates_per 5

	# Sets up an association with Users
	belongs_to :user

	# Association with comments
	has_many :comments, dependent: :destroy

	# Association with photos
	has_many :photos

	# Geocoder
	geocoded_by :address
	after_validation :geocode

	# Validations for places
	validates :name, :presence => true, :length => { :minimum => 3 }
	validates :address, :description, :presence => true

end
