class AddNameBirthdateLegalDocToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :birthdate, :date
    add_column :users, :legal_doc, :string
  end
end
