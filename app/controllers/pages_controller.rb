class PagesController < ApplicationController

  def home
    open_weather_api = OpenWeatherAPI::API.new api_key: "7598b5adbdad089bc78bc4da42b4b8f5", default_language: 'en', default_units: 'metric', default_country_code: 'nl'
    @random_user = RandomUser.choose_one

    json_random = open_weather_api.current city: @random_user.city
    json = open_weather_api.current city: current_user.profile.city

    @forecast = Forecast.create(temperature: Forecast.temperature(json), user_id: current_user.id, city: current_user.profile.city, rain: Forecast.rain(json), wind: Forecast.wind(json))
    @forecast_random = Forecast.create(temperature: Forecast.temperature(json_random), user_id: current_user.id, city: current_user.profile.city, rain: Forecast.rain(json_random), wind: Forecast.wind(json_random))

    @forecast_random.save
    @forecast.save
  end







end
