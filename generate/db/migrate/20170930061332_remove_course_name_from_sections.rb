class RemoveCourseNameFromSections < ActiveRecord::Migration[5.1]
  def change
    remove_column :sections, :course_name, :string
  end
end
