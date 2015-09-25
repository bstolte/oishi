require 'test_helper'

class CommentTest < ActiveSupport::TestCase
	test "humanized rating" do
		comment = FactoryGirl.create(:comment, :rating => '1_star').humanized_rating
		expected = "one star"
		actual = comment
		assert_equal expected, actual
	end
end
