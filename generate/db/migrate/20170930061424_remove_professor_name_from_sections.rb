class RemoveProfessorNameFromSections < ActiveRecord::Migration[5.1]
  def change
    remove_column :sections, :professor_name, :string
  end
end
