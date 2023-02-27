class CreateUserReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :user_reviews do |t|
      t.integer :stars
      t.string :description

      t.timestamps
    end
  end
end
