class CreateEmergencyContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :emergency_contacts do |t|
      t.string :name
      t.string :last_name
      t.string :phone_number
      t.string :relationship

      t.timestamps
    end
  end
end
