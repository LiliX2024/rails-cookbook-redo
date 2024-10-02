class Recipe < ApplicationRecord
  has_many :bookmarks
  has_many :categories

  validates :name, presence: true
  validates :description, presence: true, uniqueness: true
  validates :rating, inclusion: { in: 0..10 }
end
