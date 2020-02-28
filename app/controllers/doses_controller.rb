class DosesController < ApplicationController
    def new
        # byebug
     @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    end

    def create
        byebug
        @cocktail = Cocktail.find(params[:cocktail_id])
        @dose = Dose.new(dose_params)
        if @dose.save
            redirect_to cocktail_path(@cocktail)
        else
            render :new
        end 
    end
    def destroy
        # byebug
        @dose = Dose.find(params[:id])
        @dose.destroy
     end

    def dose_params
        params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
    end



end
