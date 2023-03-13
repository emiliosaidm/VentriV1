class ChangeNameOfColumnOnMexicanIdentification < ActiveRecord::Migration[7.0]
  def change
    rename_column :mexican_identifications, :type, :type_of_id
  end
end
