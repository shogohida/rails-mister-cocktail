class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  # belongs_to creates an instance method
  # variable dose.ingredient gives an instance @ingredient(reader, wrtier)
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true, uniqueness: { scope: :cocktail }
  # necessarry to validate cocktail and ingredient?
  # validates :cocktail, :ingredient, uniqueness: true
end
