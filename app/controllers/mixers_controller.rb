class MixersController < ApplicationController
    
    def create
       @drink = Drink.find(params[:drink_id])
       @mixer = @drink.mixers.create(mixer_params)
       redirect_to drink_path(@drink)
    end
    
      
        def destroy
         @drink = Drink.find(params[:drink_id])
         @mixer = @drink.mixers.find(params[:id])
         @mixer.destroy
         redirect_to drinks_path(@drink)
        end
    
    private
        def mixer_params
           params.require(:mixer).permit(:name) 
        end
end
