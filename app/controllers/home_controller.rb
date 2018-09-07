class HomeController < ApplicationController
  def top
  end

  def show
    require 'uri'
    require 'json'
    require 'net/http'
    # Addressable:: 
    url = "https://itunes.apple.com/search?term=井上陽水&lang=ja_jp&country=JP&media=music&limit=100"
    uri = URI.encode(url)
    info = URI.parse(uri)
    json = Net::HTTP.get(info)
    result = JSON.parse(json)
    @results = result["results"]
    @results.sort_by! { |hash| hash['releaseDate'].to_i }
    # @results.sort_by(@results.values_at("releaseDate"))
    # >>  @results.first.values_at("releaseDate")
    # => ["1990-09-21T07:00:00Z"]
    # >>  @results.first.values_at("releaseDate").class
    # => Array
    # binding.pry
  end

end
