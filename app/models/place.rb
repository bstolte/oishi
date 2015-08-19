class Place < ActiveRecord::Base
	
	# Karminari setting for items to display per page... 
	# https://github.com/amatsuda/kaminari#configuring-default-per_page-value-for-each-model
	paginates_per 5

	# Sets up an association with Users
	belongs_to :user

end
