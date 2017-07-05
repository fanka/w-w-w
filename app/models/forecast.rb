class Forecast < ApplicationRecord


  belongs_to :User
  belongs_to :RandomUser

  validates :user_id, presence: true, unless: ->(forecast){forecast.random_user_id.present?}
  validates :random_user_id, presence: true, unless: ->(forecast){forecast.user_id.present?}



  def self.temperature(json)
    @temp_from_api = json['main']['temp'] - 273.15
    return @temp_from_api
  end

  def self.rain(json)
    json.key?('rain') ? rain = json['rain']['3h'] : @rain_from_api = false
    rain !=nil && rain >= 2 ? @rain_from_api = true  : @rain_from_api = false
    return @rain_from_api
  end

  def self.wind(json)
  @wind_from_api=json['wind']['speed']
  end

  def self.weather_formula (temperature, rain, wind)
    rain == true ? rain_presence = 1 : rain_presence = 0
    weather_formula = (( 24 - temperature ) * 0.5) + (rain_presence * 70) + (wind * 2)
    return weather_formula
  end

  def self.compare (formula1, formula2, current_user, random_user)
    if formula1 < formula2
      return "Current user wins"
    elsif formula1 > formula2
      return "Current user fails"
    else
      return "Weather is the same"
    end

  end


end
