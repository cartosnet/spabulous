class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings

  # validates :name, presence: true, uniqueness: true
  # validates :address, presence: true, uniqueness: true
  # validates :price_night, presence: true
  # validates :price_day, presence: true
end
