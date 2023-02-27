class CreateLocationAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :location_addresses do |t|
      t.string :street
      t.string :city
      t.string :zip_code
      t.string :state
      t.string :country
      t.string :neighborhood

      t.timestamps
    end
  end
end
