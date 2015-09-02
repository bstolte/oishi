class Comment < ActiveRecord::Base

	# Comments belong to both users and places 
	belongs_to :user
	belongs_to :place

	# ActiveRecord callback - gets triggered after everytime is created...
	after_create :send_comment_email

	RATINGS = {
		'one star'    => '1_star',
		'two stars'   => '2_stars',
		'three stars' => '3_stars',
		'four stars'  => '4_stars',
		'five stars'  => '5_stars'
	}

	def humanized_rating
		RATINGS.invert[self.rating]
	end

	def send_comment_email
		NotificationMailer.comment_added(self).deliver
	end

end
