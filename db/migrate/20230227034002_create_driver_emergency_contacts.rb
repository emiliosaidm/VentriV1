class CreateDriverEmergencyContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :driver_emergency_contacts do |t|
      t.references :emergency_contact, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
