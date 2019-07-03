FactoryBot.define do
  factory :account do
    user { User.first || create(:user) }
    name { FFaker::Name.name }
    bio  { FFaker::CheesyLingo.sentence }
  end
  
  factory :buyer_account, parent: :account do
    user { User.find_by(email: 'buyer_user@gmail.com') || create(:buyer_user) }
    name { 'the buyer' }
    bio  { FFaker::CheesyLingo.sentence }
  end
  
  factory :seller_account, parent: :account do
    user { User.find_by(email: 'seller_user@gmail.com') || create(:seller_user) }
    name { 'the seller' }
    bio  { FFaker::CheesyLingo.sentence }
  end
  
  factory :reviewer_account, parent: :account do
    user { User.find_by(email: 'reviewer_user@gmail.com') || create(:reviewer_user) }
    name { 'the reviewer' }
    bio  { FFaker::CheesyLingo.sentence }
  end
  
  factory :reviewed_account, parent: :account do
    user { User.find_by(email: 'reviewed_user@gmail.com') || create(:reviewed_user) }
    name { 'the reviewed' }
    bio  { FFaker::CheesyLingo.sentence }
  end
end
