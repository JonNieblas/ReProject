class ChangeForeignKeyForEnrollments < ActiveRecord::Migration[5.1]
  def change
    rename_column :enrollments, :sections_id, :section_id
    rename_column :enrollments, :students_id, :student_id
  end
end
