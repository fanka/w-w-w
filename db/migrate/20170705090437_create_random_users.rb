class CreateRandomUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :random_users do |t|
      t.string :name
      t.string :city
      t.string :img_url

      t.timestamps
    end
  end
end
