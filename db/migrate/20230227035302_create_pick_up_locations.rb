class CreatePickUpLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :pick_up_locations do |t|
      t.float :price_of_location
      t.references :location_address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
