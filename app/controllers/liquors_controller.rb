class LiquorsController < ApplicationController
        def create
       @drink = Drink.find(params[:drink_id])
       @liquor = @drink.liquors.create(liquor_params)
       redirect_to drink_path(@drink)
        end
        
        def destroy
         @drink = Drink.find(params[:drink_id])
         @liquor = @drink.liquors.find(params[:id])
         @liquor.destroy
         redirect_to drink_path(@drink)
        end
        
    private
        def liquor_params
           params.require(:liquor).permit(:name) 
        end
end
