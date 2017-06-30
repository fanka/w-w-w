class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :city
      t.string :country
      t.string :img_url

      t.timestamps
    end
  end
end
