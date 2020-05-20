class AddCoordinatesToCharacter < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :latitude, :float
    add_column :characters, :longitude, :float
  end
end
