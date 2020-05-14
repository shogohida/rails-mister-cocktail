class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  # has_many create instance method, used always with plural
  validates :name, presence: true, uniqueness: true
end
