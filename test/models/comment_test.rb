require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Humanized Rating Output" do
  	user = FactoryGirl.create(:user)
  	sign_in :user
  	place = FactoryGirl.create(:place)
  	comment = FactoryGirl.create(:comment)
  	expected = "five stars"
  	actual = comment.humanized_rating
  	assert_equal expected, actual
  end
end
