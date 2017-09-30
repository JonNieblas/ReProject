class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :sections, :section_name, :name
  end
end
