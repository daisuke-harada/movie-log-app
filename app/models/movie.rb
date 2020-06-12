class Movie < ApplicationRecord
  validates :title, presence: true
  has_many :genres, through: :movie_genres
  has_many :movie_genres, dependent: :destroy
  accepts_nested_attributes_for :movie_genres, allow_destroy: true
  has_many :supervisers, dependent: :destroy
  accepts_nested_attributes_for :supervisers, allow_destroy: true
  has_many :actors, dependent: :destroy
  accepts_nested_attributes_for :actors, allow_destroy: true
  has_many :writers, dependent: :destroy
  accepts_nested_attributes_for :writers
  attachment :movie_image
end
