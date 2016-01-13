require 'scraping_helper'
require 'distance_helper'

class MainController < ApplicationController

  before_action :current_user



  def index

    # @data = ScrapingHelper.scrape "http://www.resourcehouse.com/WIN211/results.aspx?SearchID=0FEBE320-EE8A-4770-AAC0-B9C27A8B8FD5"
    # @results = ScrapingHelper.set_everything @data
    #
    # @distance = DistanceHelper.haversine(47.6084921, -122.336407, 47.5999035, -122.3345959)

    #THIS SHIT POPULATES THE DB

    # @results.each do |i|
    #   @meals = Meal.create(i)
    # end

  	# @disable_nav = true
  end

  def show


  end

end