class AddColumnsToForecasts < ActiveRecord::Migration[5.1]
  def change
    add_column :forecasts, :wind, :integer
    add_column :forecasts, :rain, :boolean
    add_column :forecasts, :city, :string
  end
end
