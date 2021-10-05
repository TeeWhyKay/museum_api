class MuseumsController < ApplicationController
  def nearby
    lat = params[:lat].to_f
    lng = params[:lng].to_f

  end
end
