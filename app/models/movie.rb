class Movie < ApplicationRecord
  has_many :movie_genres, dependent: :destroy
  has_many :genres, through: :movie_genres
  accepts_nested_attributes_for :movie_genres, allow_destroy: true
  has_many :supervisers, dependent: :destroy
  accepts_nested_attributes_for :supervisers, allow_destroy: true
  has_many :actors, dependent: :destroy
  accepts_nested_attributes_for :actors, allow_destroy: true
  has_many :writers, dependent: :destroy
  accepts_nested_attributes_for :writers
  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews
  attachment :movie_image
  validates :title, presence: true
  validates :a_movie_released, presence: true
  validates :show_time, presence: true

  def self.search(method, word)
    if method == "perfect_match"
      Movie.where("title LIKE?", "#{word}")
    elsif method == "partial_match"
      Movie.where("title LIKE?", "%#{word}%")
    end
  end
end
