class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :car_approved
      t.string :niv
      t.string :make
      t.string :model
      t.string :year
      t.string :engine
      t.string :transmission
      t.string :gas_type
      t.integer :doors
      t.integer :seats
      t.float :price
      t.boolean :unlimited_distance
      t.float :extra_km_price
      t.string :description
      t.integer :max_distance

      t.timestamps
    end
  end
end
