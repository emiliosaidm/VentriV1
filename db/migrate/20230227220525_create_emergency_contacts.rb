class CreateEmergencyContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :emergency_contacts do |t|
      t.string :first_name, default: ""
      t.string :last_name, default: ""
      t.string :phone_number, default: ""
      t.string :relationship, default: ""
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
