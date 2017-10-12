class Enrollment < ApplicationRecord
  belongs_to  :section
  belongs_to  :student

  validates :enroll, uniqueness: { scope: [:section_id, :student_id]}
end
