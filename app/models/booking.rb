class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat

  # validates :amount, presence: true
  # validates :started_at, presence: true
  # validates :endet_at, presence: true
end
