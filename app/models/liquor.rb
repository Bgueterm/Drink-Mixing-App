class Liquor < ApplicationRecord
    has_many :DrinkLiquor
    has_many :Drink, :through => :DrinkLiquor
end
