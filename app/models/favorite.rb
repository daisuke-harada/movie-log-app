class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :review, counter_cache: :favorites_count
end
