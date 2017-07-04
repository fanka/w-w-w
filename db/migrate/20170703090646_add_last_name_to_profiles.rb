class AddLastNameToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :last_name, :string
  end
end
