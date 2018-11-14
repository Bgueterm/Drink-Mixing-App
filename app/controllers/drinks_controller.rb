class DrinksController < ApplicationController
    def index
    end
    
    def new
        @drink = Drink.new
        @drink.DrinkLiquor.build.build_drink
        @drink.DrinkMixer.build.build_drink
    end
    
    def search
      
    end    

    def show
    end
    
    def create
        render plain: params[:article].inspect
    end
    
    def results
        
    end

end
