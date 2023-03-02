class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :gender, :string
    add_column :users, :driver_verified, :integer, default: 0
    add_column :users, :host_verified, :integer, default: 0
  end
end
