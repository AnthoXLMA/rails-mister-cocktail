class Cocktail < ApplicationRecord
  # A cocktail has many doses
  # A cocktail has many ingredients through doses
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  # A cocktail must have a unique name.
  validates :name, presence: true, uniqueness: true
end
