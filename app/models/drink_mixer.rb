class DrinkMixer < ApplicationRecord
  belongs_to :drink
  belongs_to :mixer
end
