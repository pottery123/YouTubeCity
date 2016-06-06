require 'youtube.rb'
require 'geocoder.rb'
class CitiesController < ApplicationController

  skip_before_action :require_login, only: [:index, :johannesburg, :madrid, :alice_springs]

  def index

  end


  def self.johannesburg
    johannesburg = YouTube.johannesburg
    johannesburg
  end

  def self.madrid
    madrid = YouTube.madrid
    madrid
  end

  def self.alice_springs
    alice_springs = YouTube.alice_springs
    alice_springs
  end


  def find_city(latitude,longitude,radius)
    @add_city = YouTube.find_city(latitude,longitude,radius)
    @lat = latitude
    @lng = longitude
  end

  def find_location
    userword = params[:keyword]
    radius = params[:radius]
    @location = GeoCoder.find_place(userword)
    @lng = @location['results'][0]['geometry']['location']['lng']
    @lat = @location['results'][0]['geometry']['location']['lat']
    find_city(@lat, @lng, radius)
  end
end
