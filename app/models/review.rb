class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one :movie_rank, dependent: :destroy
end
