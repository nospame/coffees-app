class AddImageToCoffee < ActiveRecord::Migration[7.0]
  def change
    add_column :coffees, :image, :string
  end
end
