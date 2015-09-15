FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "me#{n}@gmail.com"
    end
    password "12345678"
  end
end

FactoryGirl.define do
  factory :place do
    name "test kitchen"
      address "100 Merrick Road, Bellmore, Ny 11710"
      description "Great place for a quick meal"
    association :user
  end
end

FactoryGirl.define do
  factory :comment do
    message "Great place to come for soup after school!"
    rating "4_stars"
  association :user
  association :place
  end
end