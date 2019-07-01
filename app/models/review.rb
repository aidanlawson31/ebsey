class Review < ApplicationRecord
  belongs_to :reviewer,  class_name: 'Account',  foreign_key: 'reviewer_id'
  belongs_to :reviewed,  class_name: 'Account',  foreign_key: 'reviewed_id'

  validates_inclusion_of :rating, in: 1..5
end
