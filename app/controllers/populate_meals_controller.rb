require 'scraping_helper'
require 'distance_helper'

class PopulateMealsController < ApplicationController

  def populate

    @data = ScrapingHelper.scrape "http://www.resourcehouse.com/WIN211/results.aspx?SearchID=226531E5-33DC-4F60-A73C-036BCCA90D26"
    @results = ScrapingHelper.set_everything @data

    #THIS POPULATES THE DB

    @results.each do |i|
      @meals = Meal.create(i)
    end

    render text: "DONE!"

  end

end