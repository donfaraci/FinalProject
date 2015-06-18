class WeatherLookup
  attr_accessor :temperature, :weather_condition, :city, :state, :zip

  include ActiveModel::Validations

  attr_accessor :zip, :country_alpha2

  validates :zip, zipcode: { country_code: :us }

  def initialize(zip)
    self.zip = zip
  end

  def fetch_weather()
    weather_values HTTParty.get("http://api.wunderground.com/api/fe35a312a082f4b0/geolookup/conditions/q/#{zip}.json")
  end

  def weather_values(weather_hash)
    self.temperature = weather_hash.parsed_response['current_observation']['temp_f']
    self.weather_condition = weather_hash.parsed_response['current_observation']['weather']
    self.city = weather_hash.parsed_response['location']['city']
    self.state = weather_hash.parsed_response['location']['state']
  end
end