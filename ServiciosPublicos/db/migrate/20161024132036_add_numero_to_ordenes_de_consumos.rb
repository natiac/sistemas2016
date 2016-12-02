class AddNumeroToOrdenesDeConsumos < ActiveRecord::Migration[5.0]
  def change
    add_column :ordenes_de_consumos, :numero, :integer
  end
end
