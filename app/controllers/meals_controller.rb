class MealsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @meal = current_user.meals.build
  end

  def create
    @meal = current_user.meals.create(meal_params)
    if(@meal.errors.any?)
      # set flash
      # redirect back to new
      flash[:error] = @meal.errors.full_messages.join
      return redirect_to new_meals_path
    else
      #set flash
      return redirect_to dashboard_path
    end
  end

  private

  def meal_params
    params.require(:meal).permit(:fat, :carbs, :protien, :name)
  end
end
