class Drink < ApplicationRecord
    has_many :drink_liquors, dependent: :destroy
    has_many :liquors, through: :drink_liquors
    has_many :drink_mixers, dependent: :destroy
    has_many :mixers, through: :drink_mixers
    
    enum flavor: { Frozen: 0, Fruity: 1, Hot: 2, Savory: 3, Sour: 4, Spicy: 5, Sweet: 6 }

    
    validates :name, presence: true, length: { minimum: 3 }
    validates :alcoholPerVolume, presence: true, numericality: { greater_than_or_equal_to: 0.00, less_than_or_equal_to: 100.00}
    
    def to_s
        "Name:#{self.name} :#{self.liquor.name} :#{self.mixer.name}"
    end
    
    def self.search(search)
        if search
            drink = Drink.find_by(name: search)
            if drink
                self.where(drink_id: drink)
            else
                Drink.all
            end
        else
            Drink.all
        end
    end
end
