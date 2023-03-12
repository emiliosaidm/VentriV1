class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :street, default: ""
      t.string :state, default: ""
      t.string :city, default: ""
      t.string :zip_code, default: ""
      t.string :country, default: ""
      t.string :neighborhood, default: ""
      t.string :exterior_number, default: ""

      t.timestamps
    end
  end
end
