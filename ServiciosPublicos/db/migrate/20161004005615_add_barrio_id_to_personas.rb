class AddBarrioIdToPersonas < ActiveRecord::Migration[5.0]
  def change
    add_reference :personas, :barrio, foreign_key: true
  end
end
