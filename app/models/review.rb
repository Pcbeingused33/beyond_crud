class Review < ApplicationRecord
  belongs_to :restaurant
  # allows us to do: @restaurant.reviews
  validates :content, presence: true
end
