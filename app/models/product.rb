class Product < ApplicationRecord
  belongs_to :category
  belongs_to :buyer,  class_name: 'Account',  foreign_key: 'buyer_id', optional: true
  belongs_to :seller, class_name: 'Account',  foreign_key: 'seller_id'
  
  validates :name,  presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
