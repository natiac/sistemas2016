class AddMovimientoCajaIdToAsientos < ActiveRecord::Migration[5.0]
  def change
    add_reference :asientos, :movimiento_caja, foreign_key: true
  end
end
