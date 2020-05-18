class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.boolean :status
      t.string :category
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
