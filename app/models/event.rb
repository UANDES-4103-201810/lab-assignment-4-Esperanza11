class Event < ApplicationRecord
  belongs_to :place
  has_many :tickets
  validates :start_date, presence: true
end
