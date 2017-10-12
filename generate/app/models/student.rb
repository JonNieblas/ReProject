class Student < ApplicationRecord
  has_many :enrollments
  has_many :sections, through: :enrollments
  has_many :professors, through: :sections

  validates :name, length: { maximum: 20 }
  validates :name, uniqueness: true
end
