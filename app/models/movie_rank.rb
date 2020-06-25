class MovieRank < ApplicationRecord
  belongs_to :user
  belongs_to :review
  enum rank_status: { "1位": 1, "2位": 2, "3位": 3 }

  validates :rank_status, presence: true
end
