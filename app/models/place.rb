class Place < ApplicationRecord
	has_many :events
  validates :name, uniqueness: true, length: { minimum: 20, message: "name too short" }
  validates :capacity, numericality: { greater_than: 0, only_integer: true, message: "capacity not valid" }
end
