class CreateOrdenesConsumosDetalles < ActiveRecord::Migration[5.0]
  def change
    create_table :ordenes_consumos_detalles do |t|
      t.integer :monto
      t.integer :IVA

      t.timestamps
    end
  end
end
