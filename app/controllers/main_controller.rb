require 'scraping_helper'

class MainController < ApplicationController

  before_action :current_user



  def index

    @data = ScrapingHelper.scrape
    @results = ScrapingHelper.set_everything @data

  end

  def show

  end

end