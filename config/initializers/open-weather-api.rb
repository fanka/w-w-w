OpenWeatherAPI.configure do |open_weather_api|
  # API key
  open_weather_api.api_key = "7598b5adbdad089bc78bc4da42b4b8f5"

  # Optionals
  open_weather_api.default_language = 'en'     # 'en' by default
  open_weather_api.default_country_code = 'nl' # nil by default (ISO 3166-1 alfa2)
  open_weather_api.default_units = 'metric'    # 'metric' by default
end
