require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  
  test "user can post a comment to a place" do
    user = FactoryGirl.create(:user)
    sign_in user

    place = FactoryGirl.create(:place)

    # Trigger a post request to the comment controller's create action.
    assert_difference 'Comment.count' do
      assert_difference 'user.comments.count' do
        post :create, {
          :place_id => place.id,
          :comment => {
            :message => 'The food wasn\'t good',
            :rating => '1_star'
          }
        }
      end
    end

    # Verify the comment was stored in the database
    assert_equal 1, user.comments.count

    # Verify the user was redirected back to the proper location.
    assert_redirected_to place_path(place)

  end
end
