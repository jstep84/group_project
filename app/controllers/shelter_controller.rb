class ShelterController < ApplicationController

  def user_location

  end

  def show
    @shelters = Shelter.all

    render 'results/shelter_results'
  end



end
