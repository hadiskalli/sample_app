FactoryGirl.define do
  factory :user do
    name     "Hadi Skalli"
    email    "hadi.skalli@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end