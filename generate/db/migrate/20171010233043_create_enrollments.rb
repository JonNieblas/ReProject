class CreateEnrollments < ActiveRecord::Migration[5.1]
  def change
    create_table :enrollments do |t|
      t.string :enroll
      t.references :sections, foreign_key: true
      t.references :students, foreign_key: true

      t.timestamps
    end
  end
end
