class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :street
      t.string :state
      t.string :city
      t.string :zip_code
      t.string :country
      t.string :neighborhood
      t.string :exterior_number

      t.timestamps
    end
  end
end
