class AddMovimientoCajaIdToMovimientoDeCajasDetalles < ActiveRecord::Migration[5.0]
  def change
    add_reference :movimiento_de_cajas_detalles, :movimiento_caja, foreign_key: true
  end
end
