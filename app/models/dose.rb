class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true, uniqueness: { scope: :cocktail }
  # necessarry to validate cocktail and ingredient?
  # validates :cocktail, :ingredient, uniqueness: true
  # unsure if this is a right way to write validation for pair
end
