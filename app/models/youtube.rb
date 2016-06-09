require 'yt'
class YouTube

  def self.johannesburg
    videos = Yt::Collections::Videos.new
    joburg = videos.where(location: "-26.2041, 28.0473", locationRadius: "1000km").take(5).map(&:id)
    joburg
  end

  def self.madrid
    videos = Yt::Collections::Videos.new
    madrid = videos.where(location: "40.4168, 3.7038", locationRadius: "1000km").take(5).map(&:id)
    madrid
  end

  def self.alice_springs
    videos = Yt::Collections::Videos.new
    alice= videos.where(location: "-23.7002, 133.8806", locationRadius: "1000km").take(5).map(&:id)
    alice
  end


  def self.find_city(latitude,longitude,radius)
    videos = Yt::Collections::Videos.new
    add_city = videos.where(location: "#{latitude},#{longitude}", locationRadius: "#{radius}").take(100).map(&:id)
    add_city
  end


end
