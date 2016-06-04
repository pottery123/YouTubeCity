require 'yt'
class YouTube

  def self.johannesburg
    videos = Yt::Collections::Videos.new
    joburg = videos.where(location: "26.2041, 28.0473", locationRadius: "1000km").take(20).map(&:id)
    joburg
  end

  def self.find_city(longitude,latitude ,radius)
    videos = Yt::Collections::Videos.new
    add_city = videos.where(location: "#{longitude},#{latitude}", locationRadius: "#{radius}").take(20).map(&:id)
    add_city
  end
end
