class Game < ApplicationRecord
  validates :name, :genre, :price, :release_date, presence: true
  validates :name, uniqueness: true, length: { maximum: 40 }
  validates :genre, inclusion: {
    in: ['Simulator', 'Adventure', 'Strategy', 'Role-playing (RPG)', 'Shooter', 'Fighting', 'Sport'],
  }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
