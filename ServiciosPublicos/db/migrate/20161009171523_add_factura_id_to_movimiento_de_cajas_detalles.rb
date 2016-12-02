class AddFacturaIdToMovimientoDeCajasDetalles < ActiveRecord::Migration[5.0]
  def change
    add_reference :movimiento_de_cajas_detalles, :factura, foreign_key: true
  end
end
