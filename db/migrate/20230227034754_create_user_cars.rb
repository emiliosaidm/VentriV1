class CreateUserCars < ActiveRecord::Migration[7.0]
  def change
    create_table :user_cars do |t|
      t.references :car, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
