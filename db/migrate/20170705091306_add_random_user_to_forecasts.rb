class AddRandomUserToForecasts < ActiveRecord::Migration[5.1]
  def change
    add_reference :forecasts, :random_user, foreign_key: true
  end
end
