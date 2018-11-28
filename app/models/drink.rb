class Drink < ApplicationRecord
    has_many :mixers, dependent: :destroy
    has_many :liquors, dependent: :destroy
validates :name, presence: true, length: { minimum: 3 }
validates :alcoholPerVolume, presence: true, numericality: { greater_than_or_equal_to: 0.00, less_than_or_equal_to: 100.00}

end
