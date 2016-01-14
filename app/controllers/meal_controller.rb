class MealController < ApplicationController

  def user_location

  end

  def show
    @meals = Meal.all


    render 'results/meal_results'
  end



end
