class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  delegate :name, :to => :ingredient, :prefix => true
  # belongs_to creates an instance method
  # variable dose.ingredient gives an instance @ingredient(reader, wrtier)
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true, uniqueness: { scope: :cocktail }
  # validates :cocktail, :ingredient, uniqueness: true
end
