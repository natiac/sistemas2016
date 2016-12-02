class AddTipoFacturaIdToFacturas < ActiveRecord::Migration[5.0]
  def change
    add_reference :facturas, :tipo_factura, foreign_key: true
  end
end
