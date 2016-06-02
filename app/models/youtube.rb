require 'yt'
class YouTube
  def self.johannesburg
    videos = Yt::Collections::Videos.new
    joburg = videos.where(location: "26.2041, 28.0473", locationRadius: "1000km").first.id
    joburg
  end
end
