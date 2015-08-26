class Comment < ActiveRecord::Base

	# Comments belong to both users and places 
	belongs_to :user
	belongs_to :place
end
