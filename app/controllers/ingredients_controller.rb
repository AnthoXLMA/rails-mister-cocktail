class IngredientController < ApplicationController
  def index
    @ingredient = Ingredient.all
  end

  def create
    @ingredient = Ingredient.new
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end
end
