require 'yelp'

class SearchController < ApplicationController

  def find
    client = Yelp::Client.new({ consumer_key: ENV['CONSUMER_KEY'],
                                consumer_secret: ENV['CONSUMER_SECRET'],
                                token: ENV['TOKEN'],
                                token_secret: ENV['TOKEN_SECRET']})

    @results = client.search('Seattle', {term: params[:search_term], limit: 15, category_filter: 'nonprofit' })
    render 'results'
  end

  def show

  end

end