class MealController < ApplicationController
  before_action :current_user
  def user_location

  end

  def show
    @meals = Meal.all
    user_lat = params[:lat]
    user_long = params[:long]
    @meal_results = []

    @meals.each do |i|
      @meal_results.push(distance: DistanceHelper.haversine(user_lat.to_f, user_long.to_f, i.latitude, i.longitude), result: i)
    end

    @meal_results.sort_by! {|e| e[:distance] }
    render 'results/meal_results'
  end



end
