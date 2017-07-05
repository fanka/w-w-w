class AddWorstToForecasts < ActiveRecord::Migration[5.1]
  def change
    add_column :forecasts, :worst, :boolean
  end
end
