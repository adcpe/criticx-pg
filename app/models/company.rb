class Company < ApplicationRecord
  validates :name, :country, presence: true
  validates :name, uniqueness: true, length: { maximum: 40 }
end
