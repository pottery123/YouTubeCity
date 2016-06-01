
class CitiesController < ApplicationController
  def index
  end

  def show
    @videos = Yt::Collections::Videos.new
    @viedo_id = @videos.where(id:'G1Ul-pTkd5g')
    @viedo_id

  end




end
