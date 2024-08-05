require "open-uri"

class FlatsController < ApplicationController

  def index
    # Tomorrow:
    # @flats = Flat.all
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    flats = URI.open(url).read
    @flats = JSON.parse(flats)
  end

  # 'flats/SOME_ID'
  def show
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    flats = URI.open(url).read
    @flats = JSON.parse(flats)

    # Tomorrow:
    # @flat = Flat.find(params[:id])
    @flat = @flats.find { |flat| flat['id'] == params[:id].to_i }
  end
end
