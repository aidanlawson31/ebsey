class Account < ApplicationRecord
  belongs_to :user
  has_many   :products_for_sale,  class_name: 'Product', foreign_key: 'seller_id'
  has_many   :products_purchased, class_name: 'Product', foreign_key: 'buyer_id'
  
  validates_uniqueness_of :user_id
end
