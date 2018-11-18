class DrinksController < ApplicationController
    def index
    end
    
    def new
        @drink = Drink.new
        @drink.drink_liquors.build.build_liquor
        @drink.drink_mixers.build.build_mixer
    end
    
    def search

    end    

    def show
    end
    
    def create
        @drink = Drink.new(drink_params)
        @drink.drink_liquors.build.build_liquor
        @drink.drink_mixers.build.build_mixer
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
