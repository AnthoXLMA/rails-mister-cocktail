class Dose < ApplicationRecord
  # A dose must have a description, a cocktail and an ingredient,
  # and [cocktail, ingredient] pairings should be unique.
  # A dose belongs to an ingredient
  belongs_to :ingredient
  # A dose belongs to a cocktail
  belongs_to :cocktail
  has_many :cocktails

  validates :description, presence: true
  validates :cocktail, :ingredient, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
