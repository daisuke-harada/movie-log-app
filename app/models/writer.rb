class Writer < ApplicationRecord
  belongs_to :movie
  validates :writer_name, presence: true
end
