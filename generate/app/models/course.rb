class Course < ApplicationRecord
  has_many :sections

  validates :name, length: { maximum: 20 }
  validates :name, uniqueness: true

  def self.search(search)
      where('name LIKE ?', "%#{search}%")
  end
end
