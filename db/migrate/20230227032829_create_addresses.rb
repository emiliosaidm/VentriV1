class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :country
      t.string :neighborhood
      t.string :exterior_number

      t.timestamps
    end
  end
end
