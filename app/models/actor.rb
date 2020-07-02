class Actor < ApplicationRecord
  belongs_to :movie
  validates :actor_name, presence: true
end
