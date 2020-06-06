class Movie < ApplicationRecord
  validates :title, presence: true
  has_many :genres, through: :movie_genres
  has_many :movie_genres
  has_many :supervisers
  has_many :actors
  has_many :writers
  attachment :movie_image
end
