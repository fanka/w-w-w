class ApplicationRecord < ActiveRecord::Base



  self.abstract_class = true

  

  def weather_formula (temperature, rain, wind)
    rain == true ? rain_presence = 1 : rain_presence = 0
    weather_formula = ( 24 - temperature ) * 0,5 + rain_presence * 70 + wind * 2
  end



end
