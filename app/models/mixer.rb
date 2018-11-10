class Mixer < ApplicationRecord
    has_many :DrinkMixer
    has_many :Drink, :through => :DrinkMixer
end
