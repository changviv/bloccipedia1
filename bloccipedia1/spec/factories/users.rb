FactoryGirl.define do
  factory :user do
    name Faker::Internet.user_name
    email Faker::Internet.email(name)
    password 'password'
    password_confirmation 'password'
    confirmed_at Date.today
    role :member
  end
end
