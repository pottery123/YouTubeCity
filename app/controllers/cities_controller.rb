require 'youtube.rb'
class CitiesController < ApplicationController

  def self.johannesburg
    johannesburg = YouTube.johannesburg
    johannesburg
  end


end
