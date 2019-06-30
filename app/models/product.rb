class Product < ApplicationRecord
  belongs_to :category
  belongs_to :buyer,  class_name: 'Account',  foreign_key: 'buyer_id', optional: true
  belongs_to :seller, class_name: 'Account',  foreign_key: 'seller_id'
end
