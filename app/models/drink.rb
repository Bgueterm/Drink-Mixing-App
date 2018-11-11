class Drink < ApplicationRecord
    has_many :DrinkLiquor
    has_many :Liquor, :through => :DrinkLiquor
    has_many :DrinkMixer
    has_many :Mixer, :through => :DrinkMixer
    
    enum flavor: { froozen: 0, fruity: 1, hot: 2, savory: 3, sour: 4, spicy: 5, sweet: 6 }
    
    validates :name, presence: true, length: { minimum: 5 }
    validates :alcoholPerVolume, presence: true, numericality: { greater_than_or_equal_to: 0.00, less_than_or_equal_to: 100.00}
end
