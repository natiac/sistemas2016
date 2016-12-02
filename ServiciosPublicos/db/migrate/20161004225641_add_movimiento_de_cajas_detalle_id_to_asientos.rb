class AddMovimientoDeCajasDetalleIdToAsientos < ActiveRecord::Migration[5.0]
  def change
    add_reference :asientos, :movimiento_de_cajas_detalle, foreign_key: true
  end
end
