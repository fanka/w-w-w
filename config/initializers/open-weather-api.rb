OpenWeatherAPI.configure do |config|
  # API key
  config.api_key = "7598b5adbdad089bc78bc4da42b4b8f5"

  # Optionals
  config.default_language = 'en'     # 'en' by default
  config.default_country_code = 'nl' # nil by default (ISO 3166-1 alfa2)
  config.default_units = 'metric'    # 'metric' by default
end
