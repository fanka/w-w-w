class Forecast < ApplicationRecord


  belongs_to :User



  def temp_from_api
    open_weather_api = OpenWeatherAPI::API.new
    json = open_weather_api.current city: current_user.profile.city
    @temp_from_api = json['main']['temp']

  end




end
