class PagesController < ApplicationController

  def home
    open_weather_api = OpenWeatherAPI::API.new api_key: "7598b5adbdad089bc78bc4da42b4b8f5", default_language: 'en', default_units: 'metric', default_country_code: 'nl'
    json = open_weather_api.current city: current_user.profile.city
    @temp_from_api = json['main']['temp'] - 273.15
    json['rain']['3h'] >= 2 ? @rain_from_api = true  : @rain_from_api = false
    @wind_from_api=json['wind']['speed']
    @forecast = Forecast.create(temperature: @temp_from_api, user_id: current_user.id, city: current_user.profile.city, rain: @rain_from_api, wind: @wind_from_api)
    @forecast.save
  end







end
