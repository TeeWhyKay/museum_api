require 'open-uri'

class MuseumsController < ApplicationController

  @mapbox_url = 'api.mapbox.com'
  def nearby
    lat = params[:lat].to_f
    lng = params[:lng].to_f
    res = search_museums(lat, lng)

    respond_to do |f|
      f.json { render json: res }
    end
  end

  # input (float) lat, (float) long
  # output (.json) museum
  def search_museums(lat,lng)
    key = ENV['MAPBOX_API_KEY']
    url = "https://api.mapbox.com/geocoding/v5/mapbox.places/museum.json?access_token=pk.eyJ1IjoidGVld2h5a2F5IiwiYSI6ImNrc3lkZXB5azJpbWoybmt0MXQwMGVib3UifQ.1elDNvnLbuHZ1dm8NOu8fg&proximity=#{lat}%2C#{lng}&limit=10"
    result = {}
    mapbox_result_arr = JSON.parse(URI.open(url).read)["features"]
    mapbox_result_arr.each do |museum|
      result[museum["context"].first["text"]] = museum["text"]
    end
    result
  end
end
