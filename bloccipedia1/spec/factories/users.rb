FactoryGirl.define do
  factory :user do
    username 'Vivien'
    email 'vchang103@gmail.com'
    password 'password'
    password_confirmation 'password'
    confirmed_at Date.today
    role 'admin'
  end
end
