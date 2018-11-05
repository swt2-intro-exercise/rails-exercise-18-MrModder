class Paper < ApplicationRecord
  validates :title, presence: true, length: {minimum: 1}
  validates :venue, presence: true, length: {minimum: 1}
  validates :year, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
end
