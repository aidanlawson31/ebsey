FactoryBot.define do
  factory :user do
    email    { FFaker::Internet.email }
    password { 'passcode '}
  end
end
