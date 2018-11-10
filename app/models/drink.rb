class Drink < ApplicationRecord
    has_many :DrinkLiquor
    has_many :Liquor, :through => :DrinkLiquor
    has_many :DrinkMixer
    has_many :Mixer, :through => :DrinkMixer
    
    enum flavor: { savory: 0, sour: 1, sweet: 2 }
end
