class ShelterController < ApplicationController
  before_action :current_user


  def user_location

  end

  def show
    @shelter = Shelter.all
    user_lat = params[:lat2]
    user_long = params[:long2]
    puts user_long
    @shelter_results = []

    @shelter.each do |i|
      @shelter_results.push(distance: DistanceHelper.haversine(user_lat.to_f, user_long.to_f, i.latitude, i.longitude), result: i)
    end

    puts @shelter_results[3][:distance]

    @shelter_results.sort_by! {|e| e[:distance]  }

    render 'results/shelter_results'
  end



end
