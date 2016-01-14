class ExpandedController < ApplicationController

  before_action :current_user

  def user_location

  end

  def show_meal
    @place = Meal.find_by_title(params[:id])
    p @place

    render 'results/expanded_meal'
  end

  def show_shelter
    @shelter = Shelter.find_by_title(params[:id])

    render 'results/expanded_shelter'
  end


end
