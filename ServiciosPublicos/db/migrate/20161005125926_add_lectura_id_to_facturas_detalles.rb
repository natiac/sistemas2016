class AddLecturaIdToFacturasDetalles < ActiveRecord::Migration[5.0]
  def change
    add_reference :facturas_detalles, :lectura, foreign_key: true
  end
end
