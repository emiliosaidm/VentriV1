class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.integer :car_approved
      t.string :niv
      t.string :make
      t.string :model
      t.integer :year
      t.string :engine
      t.string :transmission
      t.string :gas_type
      t.integer :doors
      t.integer :seats
      t.float :price
      t.boolean :unlimited_distance, default: false
      t.string :extra_km_price, default: 0
      t.string :description
      t.float :max_distance

      t.timestamps
    end
  end
end
