class CreateFlats < ActiveRecord::Migration[5.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :address
      t.string :description
      t.integer :price_day
      t.integer :price_night
      t.boolean :petals
      t.boolean :massage_kit
      t.boolean :champagne
      t.string :instructions
      t.string :photo_1
      t.string :photo_2
      t.string :photo_3
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
