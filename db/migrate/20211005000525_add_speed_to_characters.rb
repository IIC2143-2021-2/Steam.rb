class AddSpeedToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :spedds, :integer
    add_column :characters, :attack, :integer
    add_column :characters, :defense, :integer
    add_column :characters, :splash, :integer
  end
end
