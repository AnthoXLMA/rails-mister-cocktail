class DosesController < ApplicationController
  before_action :set_dose, only: [:destroy]

    # A user can add a new dose (ingredient/description pair) to an existing cocktail
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
    # @ingredient = Ingredient.find(params[:ingredient_id])
  end

  def create
    # # array de ingredient_id
    # dose_params[:ingredient_id].each do |ingredient_id|
    # # pour chaque ingredient_id
    # # creer un plant_tag
    # @doses = Dose.new(
    #   dose_id: params[plant_id],
    #   ingredient_id: dose_id
    #   )
    # end
  end

  def destroy
    @dose.destroy
    redirect_to doses_path
  end

  private

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient, :cocktail)
  end
end
