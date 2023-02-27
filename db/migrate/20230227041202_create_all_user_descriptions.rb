class CreateAllUserDescriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :all_user_descriptions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :user_review, null: false, foreign_key: true

      t.timestamps
    end
  end
end
