class DrinkLiquor < ApplicationRecord
  belongs_to :Drink
  belongs_to :Liquor
  
  validates :Drink, presence: true
  validates :Liquor, presence: true
end
