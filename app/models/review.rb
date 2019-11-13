class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5],
        message: "Please give a rating between 0 and 5" }, numericality: { only_integer: true }
  validates :content, presence: true
end
