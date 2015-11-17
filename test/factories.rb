FactoryGirl.define do
  factory :comment do
    message "This place rocks!"
    rating "5_stars"
    user_id 1
    place 1

  end

  factory :place do
  	name "Test Place"
  	description "This is a test place description"
  	address "123 Test Street, Los Angeles, CA 90025"
  	user_id 1
  end

  factory :user do
  	email "testuser@test.com"
  	password "test1234"
  	encrypted_password "test123"
  end
end