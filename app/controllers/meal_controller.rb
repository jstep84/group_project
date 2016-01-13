class MealController < ApplicationController

  def user_location

  end

  def show
    render json: params
    # redirect_to root_path


  end



end
