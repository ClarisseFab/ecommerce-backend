class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :duration
      t.integer :length
      t.string :difficulty
      t.integer :height
      t.string :description
      t.string :departure_place
      t.string :period

      t.timestamps
    end
  end
end
