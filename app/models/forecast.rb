class Forecast < ApplicationRecord


  belongs_to :User
  belongs_to :RandomUser

  validates :user_id, presence: true, unless: ->(forecast){forecast.random_user_id.present?}
  validates :random_user_id, presence: true, unless: ->(forecast){forecast.user_id.present?}

  def temp_from_api
    open_weather_api = OpenWeatherAPI::API.new
    json = open_weather_api.current city: current_user.profile.city
    @temp_from_api = json['main']['temp']

  end




end
