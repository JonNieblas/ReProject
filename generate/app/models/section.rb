class Section < ApplicationRecord
  belongs_to :course
  belongs_to :professor

  validates :section_name, numericality: true
  validates :section_name, length: { is: 4 }
  validates :section_name, uniqueness: true
end
