class ProfileController < ApplicationController
  before_action :current_user

  def new

    if params[:user][:service] == "2"
      place = params[:user]

      coords = ScrapingHelper.long_lat_convert(place[:address])

      Shelter.create(:title => place[:title],
                     :address => place[:address],
                     :latitude => coords['lat'],
                     :longitude => coords['lng'],
                     :phone => "Phone:" + place[:phone],
                     :hours => "Hours:" + place[:hours],
                     :description => place[:description])


    elsif params[:user][:service] == "1"
      place = params[:user]

      coords = ScrapingHelper.long_lat_convert(place[:address])

      Meal.create(:title => place[:title],
                     :address => place[:address],
                     :latitude => coords['lat'],
                     :longitude => coords['lng'],
                     :phone => "Phone:" + place[:phone],
                     :hours => "Hours:" + place[:hours],
                     :description => place[:description])
    end
  end

  def create
  end
end
