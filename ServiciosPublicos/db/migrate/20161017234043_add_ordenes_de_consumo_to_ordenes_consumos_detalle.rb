class AddOrdenesDeConsumoToOrdenesConsumosDetalle < ActiveRecord::Migration[5.0]
  def change
    add_reference :ordenes_consumos_detalles, :ordenes_de_consumo, foreign_key: true

  end
end
