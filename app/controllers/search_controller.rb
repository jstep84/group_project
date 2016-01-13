require 'yelp'

class SearchController < ApplicationController

  def find
    client = Yelp::Client.new({ consumer_key: ENV['YdsWXDLBc5jJqb5RFmgUMQ'],
                                consumer_secret: ENV['UAWdaNXqRdpdyw-nrE1s5l1TBX0'],
                                token: ENV['IWUvVrDD5SA47jQX5AGfjS3JiriwOuwH'],
                                token_secret: ENV['NmyWgAmaQmGc6v5flAkA_vxrx-I']})

    @results = client.search('Seattle', {term: params[:search_term], limit: 15, category_filter: 'nonprofit' })
    render 'results'
  end

  def show

  end

end