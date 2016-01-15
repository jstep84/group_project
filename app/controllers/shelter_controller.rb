class ShelterController < ApplicationController
  before_action :current_user


  def user_location

  end

  def show
    @shelter = Shelter.all

    user_lat = cookies[:latitude]
    user_long = cookies[:longitude]

    @shelter_results = []

    @shelter.each do |i|
      @shelter_results.push(distance: DistanceHelper.haversine(user_lat.to_f, user_long.to_f, i.latitude, i.longitude), result: i)
    end

    @shelter_results.sort_by! {|e| e[:distance]  }

    render 'results/shelter_results'
  end



end
