class RenameSpeddsFromCharacters < ActiveRecord::Migration[5.2]
  def change
    rename_column :characters, :spedds, :speed
  end
end
