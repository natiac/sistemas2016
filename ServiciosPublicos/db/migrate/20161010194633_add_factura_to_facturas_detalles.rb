class AddFacturaToFacturasDetalles < ActiveRecord::Migration[5.0]
  def change
    add_reference :facturas_detalles, :factura, foreign_key: true
  end
end
