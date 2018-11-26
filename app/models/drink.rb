class Drink < ApplicationRecord
    has_many :DrinkLiquor, dependent: :destroy
    has_many :Liquor, :through => :DrinkLiquor
    # accepts_nested_attributes_for :DrinkLiquor, allow_destroy: true
    has_many :DrinkMixer, dependent: :destroy
    has_many :Mixer, :through => :DrinkMixer
   #  accepts_nested_attributes_for :DrinkMixer, allow_destroy: true
    
    enum flavor: { Frozen: 0, Fruity: 1, Hot: 2, Savory: 3, Sour: 4, Spicy: 5, Sweet: 6 }
    
    validates :name, presence: true, length: { minimum: 5 }
    validates :alcoholPerVolume, presence: true, numericality: { greater_than_or_equal_to: 0.00, less_than_or_equal_to: 100.00}
end
