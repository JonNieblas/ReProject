class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.string :section_name
      t.string :course_name
      t.string :professor_name
      t.references :course, foreign_key: true
      t.references :professor, foreign_key: true

      t.timestamps
    end
  end
end
