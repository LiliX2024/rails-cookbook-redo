class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :recipe, uniqueness: { scope: :category }
  validates :comment, length: { minimum: 6 }
end
