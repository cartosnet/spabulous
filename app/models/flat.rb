class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_attachments :photos, maximum: 3

  # validates :name, presence: true, uniqueness: true
  # validates :address, presence: true, uniqueness: true
  # validates :price_night, presence: true
  # validates :price_day, presence: true
end


