class AddUserToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_reference :characters, :user, foreign_key: true
  end
end
