class DrinksController < ApplicationController
    def index
    end
    
    def search
      @drink = Drink.new
    end    

    def show
    end
    
    def create
        render plain: params[:article].inspect
    end
    
    def results
        
    end

end
