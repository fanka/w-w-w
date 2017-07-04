
class ForecastsController < ApplicationController


  
  def index
    @forecasts = current_user.forecasts
  end

  def new
    @forecast = current_user.forecasts.build

  end

  def create
    @forecast = current_user.forecasts.build(temperature: @temp_from_api)
    @forecast.save
  end

  def update

  end

  def
end
