class PagesController < ApplicationController

  def home
    open_weather_api = OpenWeatherAPI::API.new api_key: "7598b5adbdad089bc78bc4da42b4b8f5", default_language: 'en', default_units: 'metric', default_country_code: 'nl'
    json = open_weather_api.current city: current_user.profile.city
    @temp_from_api = json['weather']
    @forecast = Forecast.create(temperature: @temp_from_api, user_id: current_user.id)
  end







end
