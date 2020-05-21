class AddActiveToCharacters < ActiveRecord::Migration[6.0]
  def change
    remove_column :characters, :status
    add_column :characters, :active, :boolean, default: true
  end
end
