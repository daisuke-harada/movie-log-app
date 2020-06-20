class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one :movie_first_rank, dependent: :destroy
  has_one :movie_second_rank, dependent: :destroy
  has_one :movie_third_rank, dependent: :destroy
end
