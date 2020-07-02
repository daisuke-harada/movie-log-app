class Superviser < ApplicationRecord
  belongs_to :movie
  validates :superviser_name, presence: true
end
