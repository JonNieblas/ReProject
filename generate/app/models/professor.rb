class Professor < ApplicationRecord
  has_many :sections

  validates :name, length: { in: 7..20}
  validates :name, uniqueness: true


end
