class Booking < ApplicationRecord
  belongs_to :character
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true

  after_create :set_character_inactive
  def set_character_inactive
    self.character.active = false
    self.character.save
  end
end
