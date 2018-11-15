class DrinksController < ApplicationController
    def index
    end
    
    def new
        @drink = Drink.new
        @drink.DrinkLiquor.build
        @drink.DrinkMixer.build
    end
    
    def search

    end    

    def show
    end
    
    def create
        @drink = Drink.new(drink_params)
        if @drink.save
        end
        render 'new'
    end
    
    def results
        
    end
    
    private 
        def drink_params
            params.require(:drink).permit(:name, :alcoholPerVolume, :flavor,
            {Liquor_ids: [], Mixer_ids: []})
        end
end
