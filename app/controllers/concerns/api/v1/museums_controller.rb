require 'open-uri'

class MuseumsController < ApplicationController
  # rate limiting aspect?
  def nearby
    lat = params[:lat].to_f
    lng = params[:lng].to_f
    res = Mapbox.call(lat, lng)

    respond_to do |f|
      f.json { render json: res }
    end
  end

  # input (float) lat, (float) long
  # output (.json) museum

end
