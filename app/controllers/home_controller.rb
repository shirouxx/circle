class HomeController < ApplicationController
  def top
  end

  def index
    @artist = params[:search]
  end

  def show
    require 'uri'
    require 'json'
    require 'net/http'
    # Addressable:: 
    url = "https://itunes.apple.com/search?term=#{params[:search]}&lang=ja_jp&country=JP&media=music&limit=100"
    uri = URI.encode(url)
    info = URI.parse(uri)
    json = Net::HTTP.get(info)
    result = JSON.parse(json)
    @results = result["results"]
    @results.sort_by! { |hash| hash['releaseDate'].to_i }
    # binding.pry
  end

end
