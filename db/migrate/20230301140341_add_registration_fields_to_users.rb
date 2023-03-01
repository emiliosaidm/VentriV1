class AddRegistrationFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :Nombre, :string
    add_column :users, :Apellido, :string
  end
end
