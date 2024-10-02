class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :recipe, uniqueness: { scope: :category }
  validates :comments, length: { minimum: 6 }
end
