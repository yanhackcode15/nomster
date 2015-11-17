require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Create a comment" do
  	user = FactoryGirl.create(:user)
  	sign_in user
  	place = FactoryGirl.create(:place)
		assert_difference  'place.comments.count'  do
			post :create, :place_id => place.id, :comment => {
  		:rating => '3_stars',
  		:description => 'this place rocks!',
  		# :place_id => place.id,
  		# :user_id => user
  		}
  	end
  	
  	assert_equal 1, place.comments.count
  	assert_redirected_to place_path(place)
  end
end
