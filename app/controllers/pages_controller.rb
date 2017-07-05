class PagesController < ApplicationController

  def home
    open_weather_api = OpenWeatherAPI::API.new api_key: "7598b5adbdad089bc78bc4da42b4b8f5", default_language: 'en', default_units: 'metric', default_country_code: 'nl'


    @random_user = RandomUser.first
    json_random = open_weather_api.current city: @random_user.city
    @temp_from_api_random = json_random['main']['temp'] - 273.15
    @wind_from_api_random=json_random['wind']['speed']
    @forecast_random = Forecast.create(temperature: @temp_from_api_random, user_id: @random_user.id, city: @random_user.city, rain: @rain_from_api_random, wind: @wind_from_api_random)
    @forecast_random.save

    json = open_weather_api.current city: current_user.profile.city
    @temp_from_api = json['main']['temp'] - 273.15
    json.key?('rain') ? rain = json['rain']['3h'] : @rain_from_api = false
    rain !=nil && rain >= 2 ? @rain_from_api = true  : @rain_from_api = false
    @wind_from_api=json['wind']['speed']
    @forecast = Forecast.create(temperature: @temp_from_api, user_id: current_user.id, city: current_user.profile.city, rain: @rain_from_api, wind: @wind_from_api)
    @forecast.save
  end







end
