class Paper < ApplicationRecord
  validates :title, presence: true, length: {minimum: 1}
  validates :venue, presence: true, length: {minimum: 1}
  validates :year, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}

  has_and_belongs_to_many :authors

  scope :created_in, ->(publishingYear){ where('year = ?', publishingYear) }
end
