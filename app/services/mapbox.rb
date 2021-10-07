class Mapbox
  def self.call(lat, lng)
    key = ENV['MAPBOX_API_KEY']
    @url = "https://api.mapbox.com/geocoding/v5/mapbox.places/museum.json?access_token=#{key}&proximity=#{lat}%2C#{lng}&limit=10"
    result = {}
    mapbox_result_arr = JSON.parse(URI.open(url).read)['features']
    mapbox_result_arr.each do |museum|
      result[museum['context'].first['text']] = museum['text']
    end
    result
  end
end
