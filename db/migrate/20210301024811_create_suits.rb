class CreateSuits < ActiveRecord::Migration[6.1]
  def change
    create_table :suits do |t|
      t.string :brand
      t.string :color
      t.integer :size
      t.integer :price

      t.timestamps
    end
  end
end
