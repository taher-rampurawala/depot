class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :address
      t.string :country, limit: 2
      t.string :state
      t.string :city
      t.integer :zip_code, limit: 6

      t.timestamps
    end
  end
end
