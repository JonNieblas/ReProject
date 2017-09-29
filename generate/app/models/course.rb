class Course < ApplicationRecord
  has_many :sections

  validates :name, length: { maximum: 20 }
  validates :name, uniqueness: true
end
