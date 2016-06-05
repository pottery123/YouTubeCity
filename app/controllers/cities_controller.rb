require 'youtube.rb'
require 'geocoder.rb'
class CitiesController < ApplicationController



  def self.johannesburg
    johannesburg = YouTube.johannesburg
    johannesburg
  end

  def find_city(latitude,longitude,radius)
    @add_city = YouTube.find_city(latitude,longitude,radius)
  end

  def find_location
    userword = params[:keyword]
    radius = params[:radius]

    @location = GeoCoder.find_place(userword)
    lng = @location['results'][0]['geometry']['location']['lng']
    lat = @location['results'][0]['geometry']['location']['lat']
    find_city(lat, lng, radius)

  end
end
