FactoryBot.define do
  factory :account do
    user { User.first || association(:user) }
    name { FFaker::Name.name }
    bio  { FFaker::CheesyLingo.sentence }
  end
end
