class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end
  def show
    @cocktail = Cocktail.find(params[:id])
  end
  def edit
  end
  def new
    @cocktail = Cocktail.new
  end
  def update
    @cocktail.update(cocktail_params)
    redirect_to @cocktail
  end
  def destroy
  end
  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
    redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
