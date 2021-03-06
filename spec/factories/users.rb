FactoryBot.define do
  factory :user do
    email    { FFaker::Internet.email }
    password { 'passcode' }
  end
  
  factory :buyer_user, parent: :user do
    email    { 'buyer_user@gmail.com' }
    password { 'passcode' }
  end
  
  factory :seller_user, parent: :user do
    email    { 'seller_user@gmail.com' }
    password { 'passcode' }
  end
  
  factory :reviewer_user, parent: :user do
    email    { 'reviewer_user@gmail.com' }
    password { 'passcode' }
  end
  
  factory :reviewed_user, parent: :user do
    email    { 'reviewed_user@gmail.com' }
    password { 'passcode' }
  end
end
