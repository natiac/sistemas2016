class AddTipoFacturaIdToOrdenesDeConsumos < ActiveRecord::Migration[5.0]
  def change
    add_reference :ordenes_de_consumos, :tipo_factura, foreign_key: true
  end
end
