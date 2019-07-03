FactoryBot.define do
  factory :review do
    reviewer { Account.find_by(name: 'the reviewer') || create(:reviewer_account) }
    reviewed { Account.find_by(name: 'the reviewed') || create(:reviewed_account) }
    content  { 'string' }
    rating   { rand(1..5) }
  end
end
