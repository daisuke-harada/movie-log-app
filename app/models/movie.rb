class Movie < ApplicationRecord
  has_many :genres, through: :movie_genres
  has_many :movie_genres
end
