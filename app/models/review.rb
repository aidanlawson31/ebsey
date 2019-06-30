class Review < ApplicationRecord
  belongs_to :reviewer,  class_name: 'Account',  foreign_key: 'reviewer_id'
  belongs_to :reviewed,  class_name: 'Account',  foreign_key: 'reviewed_id'
  
  validates :rating, numericality: { less_than_or_equal_to: 5 }
end
