class Character < ApplicationRecord
  CATEGORY = ["Laundry", "Cleaning", "Simple Chores", "Electrical", "Construction", "Babysitting", "Meal prep", "Tutoring", "Personal Training", "Transportation"]

  scope :active, -> {where(active: true)}

  belongs_to :user
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORY }
  validates :price, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :photo, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_category_and_address,
    against: [ :name, :category, :address ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
