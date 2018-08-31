class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :year
      t.string :model
      t.integer :price
      t.text :description
      t.references :category

      t.timestamps
    end
  end
end
