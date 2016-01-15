require 'scraping_helper'
require 'distance_helper'

class PopulateSheltersController < ApplicationController

  def populate

    @data = ScrapingHelper.scrape "http://www.resourcehouse.com/WIN211/results.aspx?SearchID=92733FFE-DB00-4A5C-8335-7A5A9A6527A1"
    @results = ScrapingHelper.set_everything @data

    #THIS POPULATES THE DB

    @results.each do |i|
      @shelters = Shelter.create(i)
    end

    render text: "DONE!"

  end

end