class CreateRentalDrivers < ActiveRecord::Migration[7.0]
  def change
    create_table :rental_drivers do |t|
      t.references :rental, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
