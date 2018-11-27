class Drink < ApplicationRecord
    has_many :drink_liquors, dependent: :destroy
    has_many :liquors, through: :drink_liquors
    has_many :drink_mixers, dependent: :destroy
    has_many :mixers, through: :drink_mixers
    
    enum flavor: { FROZEN: 0, FRUITY: 1, HOT: 2, SAVORY: 3, SOUR: 4, SPICY: 5, SWEET: 6 }

    
    validates :name, presence: true, length: { minimum: 3 }
    validates :alcoholPerVolume, presence: true, numericality: { greater_than_or_equal_to: 0.00, less_than_or_equal_to: 100.00}
    
    def to_s
    "Name:#{self.name} :#{self.liquor.name} :#{self.mixer.name}"
  end
end
