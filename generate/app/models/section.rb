class Section < ApplicationRecord
  belongs_to :course
  belongs_to :professor

  validates :name, numericality: true
  validates :name, length: { is: 4 }
  validates :name, uniqueness: true

  def self.search(search)
    where('name LIKE ?', "%#{search}%")
  end
end
