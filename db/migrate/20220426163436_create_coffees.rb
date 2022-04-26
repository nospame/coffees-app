class CreateCoffees < ActiveRecord::Migration[7.0]
  def change
    create_table :coffees do |t|
      t.string :name
      t.string :origin
      t.integer :price
      t.string :roast

      t.timestamps
    end
  end
end
