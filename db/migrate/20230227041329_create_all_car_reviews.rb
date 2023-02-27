class CreateAllCarReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :all_car_reviews do |t|
      t.references :car, null: false, foreign_key: true
      t.references :car_reviews, null: false, foreign_key: true

      t.timestamps
    end
  end
end
