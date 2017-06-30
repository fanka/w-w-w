class CreateForecasts < ActiveRecord::Migration[5.1]
  def change
    create_table :forecasts do |t|
      t.integer :temperature

      t.timestamps
    end
  end
end
