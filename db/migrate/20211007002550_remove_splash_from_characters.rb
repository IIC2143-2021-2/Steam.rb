class RemoveSplashFromCharacters < ActiveRecord::Migration[5.2]
  def change
    remove_column :characters, :splash, :integer
  end
end
