class Drink < ApplicationRecord
    has_many :DrinkLiquor, dependent: :destroy
    has_many :Liquor, :through => :DrinkLiquor
    # accepts_nested_attributes_for :DrinkLiquor, allow_destroy: true
    has_many :DrinkMixer, dependent: :destroy
    has_many :Mixer, :through => :DrinkMixer
   #  accepts_nested_attributes_for :DrinkMixer, allow_destroy: true
    
<<<<<<< HEAD
    enum flavor: { frozen: 0, fruity: 1, hot: 2, savory: 3, sour: 4, spicy: 5, sweet: 6 }
=======
    enum flavor: { Frozen: 0, Fruity: 1, Hot: 2, Savory: 3, Sour: 4, Spicy: 5, Sweet: 6 }
>>>>>>> 1931c1fe6a8af10db7bdea3531199c9af527e143
    
    validates :name, presence: true, length: { minimum: 5 }
    validates :alcoholPerVolume, presence: true, numericality: { greater_than_or_equal_to: 0.00, less_than_or_equal_to: 100.00}
end
