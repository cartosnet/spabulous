class FixEndedAtColumnNameInBookings < ActiveRecord::Migration[5.0]
  def change
    rename_column :bookings, :endet_at, :ended_at
  end
end
