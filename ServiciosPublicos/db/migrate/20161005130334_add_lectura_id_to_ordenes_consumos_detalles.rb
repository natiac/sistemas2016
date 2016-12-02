class AddLecturaIdToOrdenesConsumosDetalles < ActiveRecord::Migration[5.0]
  def change
    add_reference :ordenes_consumos_detalles, :lectura, foreign_key: true
  end
end
