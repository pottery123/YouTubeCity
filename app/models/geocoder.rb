require 'httparty'

class GeoCoder
  BASE_URL = "https://maps.googleapis.com/maps/api/geocode/json?address="

  def self.find_place(location)
  place = HTTParty.get(BASE_URL + location).parsed_response
  place
  end
end
