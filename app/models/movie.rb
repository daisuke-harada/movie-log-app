class Movie < ApplicationRecord
  validates :title, presence: true
  has_many :genres, through: :movie_genres
  has_many :movie_genres
  accepts_nested_attributes_for :movie_genres
  has_many :supervisers, inverse_of: :movie
  accepts_nested_attributes_for :supervisers, allow_destroy: true
  has_many :actors, inverse_of: :movie
  accepts_nested_attributes_for :actors
  has_many :writers, inverse_of: :movie
  accepts_nested_attributes_for :writers
  attachment :movie_image
end
