class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :amount
      t.datetime :started_at
      t.datetime :endet_at
      t.boolean :petals
      t.boolean :massage_kit
      t.boolean :champagne
      t.references :user, foreign_key: true
      t.references :flat, foreign_key: true

      t.timestamps
    end
  end
end
