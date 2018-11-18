class DrinksController < ApplicationController
    def index
    end
    
    def new
        @drink = Drink.new
    end
    
    def search

    end    

    def show
    end
    
    def create
        @drink = Drink.new(drink_params)
        @drink.save
        render 'new'
    end
    
    def results
        
    end
    
    private 
        def drink_params
            params.require(:drink).permit(:name, :alcoholPerVolume, :flavor, 
            :description, liquor_ids: [], mixer_ids: [])
        end
end
