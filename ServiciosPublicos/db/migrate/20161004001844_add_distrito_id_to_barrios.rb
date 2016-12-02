class AddDistritoIdToBarrios < ActiveRecord::Migration[5.0]
  def change
    add_reference :barrios, :distrito, foreign_key: true
  end
end
