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
        render plain: params[:article].inspect
    end
    
    def results
        
    end

end
