class AddConceptoIdToFacturasDetalles < ActiveRecord::Migration[5.0]
  def change
    add_reference :facturas_detalles, :concepto, foreign_key: true
  end
end
