class Comment < ApplicationRecord
  belongs_to :review
  has_one :movie through: :review
  belongs_to :user
end
