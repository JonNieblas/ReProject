class Professor < ApplicationRecord
  has_many :sections
  has_many :students

  validates :name, length: { in: 7..20}
  validates :name, uniqueness: true

  def self.search(search)
    where('name LIKE ?', "%#{search}%")
  end

end
