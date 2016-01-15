require 'scraping_helper'
require 'distance_helper'

class PopulateMealsController < ApplicationController

  def populate

    @data = ScrapingHelper.scrape params[:shelter][:url]
    @results = ScrapingHelper.set_everything @data

    #THIS POPULATES THE DB

    @results.each do |i|
      @meals = Meal.create(i)
    end

    render text: "DONE!"

  end

  def get_url
    render 'populate/populate_meals'
  end

end