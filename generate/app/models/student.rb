class Student < ApplicationRecord
  has_many  :enrollments
  belongs_to  :professor

  validates :name, length: { maximum: 20 }
  validates :name, uniqueness: true
end
