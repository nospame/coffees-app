class AddRoasterRefToCoffees < ActiveRecord::Migration[7.0]
  def change
    add_reference :coffees, :roaster, foreign_key: true
  end
end
