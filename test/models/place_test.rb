require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "place test" do
  	assert_difference(FactoryGirl.create(:place))
  end

end
