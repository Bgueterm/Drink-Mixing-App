class DrinkMixer < ApplicationRecord
  belongs_to :Drink
  belongs_to :Mixer
  
  validates :Drink, presence: true
  validates :Mixer, presence: true
end
