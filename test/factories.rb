FactoryGirl.define do
  factory :comment do
    message "This place rocks!"
    rating "5_stars"
    association :place
    association :user
    # user_id 1
    # place 1
    # belongs_to :place
    # belongs_to :user

  end

  factory :place do
  	name "Test Place"
  	description "This is a test place description"
  	address "123 Test Street, Los Angeles, CA 90025"
  	# user_id 1
  	association :user
  end

  factory :user do
  
    sequence :email do |n|
      "yoloman#{n}@gmail.com"
    end
  	password "test1234"
  	password_confirmation "test1234"
  end
end