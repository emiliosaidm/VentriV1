class CreateMexicanIdentifications < ActiveRecord::Migration[7.0]
  def change
    create_table :mexican_identifications do |t|
      t.string :type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
