class Genre < ApplicationRecord
  validates :name, presence: true
  has_many :movies, through: :movie_genres
  has_many :movie_genres
  accepts_nested_attributes_for :movie_genres
end
