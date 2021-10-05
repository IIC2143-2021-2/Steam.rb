class AddSpeedToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :spedds, :integer
  end
end
