require 'scraping_helper'
require 'distance_helper'

class PopulateSheltersController < ApplicationController

  def populate

    @data = ScrapingHelper.scrape params[:shelter][:url]
    @results = ScrapingHelper.set_everything @data

    #THIS POPULATES THE DB

    @results.each do |i|
      @shelters = Shelter.create(i)
    end

    render text: 'DONE!'

  end

  def get_url
    render 'populate/populate_shelters'
  end


end