class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.references :car, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.boolean :host_accepted, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
