require 'scraping_helper'
require 'distance_helper'

class MainController < ApplicationController

  before_action :current_user



  def index

    @data = ScrapingHelper.scrape
    @results = ScrapingHelper.set_everything @data

    @distance = DistanceHelper.haversine(47.6084921, -122.336407, 47.5999035, -122.3345959)

    #THIS SHIT POPULATES THE DB

    # @results.each do |i|
    #   @shelters = Shelter.create(i)
    # end

  end

  def show
    @data = ScrapingHelper.scrape
    @results = ScrapingHelper.set_everything @data

    puts @results


  end

end