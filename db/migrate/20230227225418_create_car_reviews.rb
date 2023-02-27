class CreateCarReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :car_reviews do |t|
      t.integer :stars
      t.string :description
      t.references :car, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
