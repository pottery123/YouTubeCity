require 'youtube.rb'
class CitiesController < ApplicationController



  def self.johannesburg
    johannesburg = YouTube.johannesburg
    johannesburg
  end

  def find_city
    longitude = params[:longitude]
    latitude = params[:latitude]
    radius = params[:radius]
    @add_city = YouTube.find_city(longitude,latitude,radius)
    @add_city
  end
end
