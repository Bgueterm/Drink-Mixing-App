class Drink < ApplicationRecord
    has_many :DrinkLiquor, dependent: :destroy
    has_many :Liquor, :through => :DrinkLiquor
    # accepts_nested_attributes_for :DrinkLiquor, allow_destroy: true
    has_many :DrinkMixer, dependent: :destroy
    has_many :Mixer, :through => :DrinkMixer
   #  accepts_nested_attributes_for :DrinkMixer, allow_destroy: true
    
    enum flavor: { FROZEN: 0, FRUITY: 1, HOT: 2, SAVORY: 3, SOUR: 4, SPICY: 5, SWEET: 6 }
    
    validates :name, presence: true, length: { minimum: 5 }
    validates :alcoholPerVolume, presence: true, numericality: { greater_than_or_equal_to: 0.00, less_than_or_equal_to: 100.00}
end
