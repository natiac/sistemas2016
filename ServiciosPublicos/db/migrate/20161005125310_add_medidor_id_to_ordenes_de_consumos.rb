class AddMedidorIdToOrdenesDeConsumos < ActiveRecord::Migration[5.0]
  def change
    add_reference :ordenes_de_consumos, :medidor, foreign_key: true
  end
end
