class AddConceptoIdToOrdenesConsumosDetalles < ActiveRecord::Migration[5.0]
  def change
    add_reference :ordenes_consumos_detalles, :concepto, foreign_key: true
  end
end
