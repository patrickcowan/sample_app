FactoryGirl.define do
  factory :user do
    name     "Patrick Cowan"
    email    "patrick@example.com"
    password "password"
    password_confirmation "password"
  end
end