class Account < ApplicationRecord
  belongs_to :user
  has_many :products_for_sale,  class_name: 'Product', foreign_key: 'seller_id'
  has_many :products_purchased, class_name: 'Product', foreign_key: 'buyer_id'
  has_many :reviews,  class_name: 'Review', foreign_key: 'reviewer_id'
  has_many :reviewed, class_name: 'Review', foreign_key: 'reviewed_id'
  
  validates :name, presence: true
end
