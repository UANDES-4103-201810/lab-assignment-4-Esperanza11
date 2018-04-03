class Event < ApplicationRecord
  belongs_to :place
  has_many :tickets
  validate :unique_start_date_and_place
  def unique_start_date_and_place
    events = Event.includes(:place).where("place_id = ? AND start_date = ?",self.place, self.start_date).references(:place).exists?
    if !(events)
      errors.add(:start_date, "There is another event in this place and date")
    end
  end

end
