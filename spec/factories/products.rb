FactoryBot.define do
  factory :product do
    buyer    { Account.find_by(name: 'the buyer')   || create(:buyer_account) }
    seller   { Account.find_by(name: 'the seller')  || create(:seller_account) }
    category { Category.first || association(:category) }
    name     { FFaker::Product.product_name }
    price    { FFaker::Vehicle.engine_displacement }
    description { FFaker::Tweet.tweet }
  end
end
