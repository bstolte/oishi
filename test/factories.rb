FactoryGirl.define do
  factory :user do
  	email { |n| "tester#{n}@gmail.com" }
  	password "validpassword"
  	password_confirmation "validpassword"
  end
end

FactoryGirl.define do
  factory :comment do
    message "omg"
    rating "1_star"
    association :user
    association :place
  end
end

FactoryGirl.define do
  factory :place do
    name "Cafe Bunn Mi"
    address "417 Clement St, San Francisco, CA 94118"
    description "Yummy Vietnamese sandwiches"
    association :user
  end
end