class DrinksController < ApplicationController
    def index
        @drinks = Drink.all
<<<<<<< HEAD
=======
        if params[:id]
            @drinks = Drink.results(params[:results]).order("created_at DESC")
        else
            @drinks = Drink.all.order('created_at DESC')
        end
    end
    
    def new
        @drink = Drink.new
>>>>>>> master
    end
#--------------------------------------------------------------#
    def show
        @drink = Drink.find(params[:id])
<<<<<<< HEAD
    end
#--------------------------------------------------------------#
    def new
        @drink = Drink.new
    end
#--------------------------------------------------------------#    
    def create
        
=======
        redirect_to drinks_search_results_path
    end
    
    def create
>>>>>>> master
        @drink = Drink.new(drink_params)
        
        if @drink.save
             redirect_to @drink
            else
             render 'new'
        end
    end
<<<<<<< HEAD
#--------------------------------------------------------------#    
=======
    
    def search
        @drinks = Drink.search(params[:name], params[:liquor], 
                               params[:mixer], params[:flavor])
    end
    
>>>>>>> master
    def edit
        @drink = Drink.find(params[:id])
    end
#--------------------------------------------------------------#    
    def update
        @drink = Drink.find(params[:id])
            if @drink.update(drink_params)
        redirect_to @drink
            else
         render 'edit'
            end
    end
#--------------------------------------------------------------#    
    def destroy
         @drink = Drink.find(params[:id])
         @drink.destroy
         redirect_to drinks_path
    end
<<<<<<< HEAD
#--------------------------------------------------------------#    
=======

    
    private 
        def drink_params
            params.require(:drink).permit(:name, :alcoholPerVolume, :flavor, 
            :description, :search, liquor_ids: [], mixer_ids: [])
        end
>>>>>>> master
end
#--------------------------------------------------------------#

private
    def drink_params 
            params.require(:drink).permit(:name,:alcoholPerVolume,:flavor)
    end
#--------------------------------------------------------------#