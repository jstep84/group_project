class MainController < ApplicationController
  def index
  end
  def show
    base_url = 'https://itunes.apple.com/search'
    @query = params[:q]
    response = RestClient.get base_url, {:params => {:term => params[:q]}}
    # what the parameters are on url. depending on api, they'll have diff needs. example: itunes is /search term=  :q is value of our form. this response will look like itunes.apple.com/search/term=searchquery
    # response = RestClient.get base_url, {:params => {:secret_key => ENV[‘FLICKR_SECRET’]}}
    @results = JSON.parse(response)['results']
    # @results = JSON.parse(response)['results']['artistName']
  end
end