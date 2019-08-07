class Review < ApplicationRecord
  belongs_to :restaurant
  validates :raiting, presence: true
  validates :raiting, presence: true, inclusion: { in: 1..5 }
end

