class CreateRentalPickUpLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :rental_pick_up_locations do |t|
      t.references :rental, null: false, foreign_key: true
      t.references :pick_up_location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
