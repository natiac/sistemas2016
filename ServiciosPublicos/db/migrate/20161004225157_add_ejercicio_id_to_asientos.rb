class AddEjercicioIdToAsientos < ActiveRecord::Migration[5.0]
  def change
    add_reference :asientos, :ejercicio, foreign_key: true
  end
end
