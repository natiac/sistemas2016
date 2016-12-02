class CreateOrdenesDeConsumos < ActiveRecord::Migration[5.0]
  def change
    create_table :ordenes_de_consumos do |t|
      t.integer :total_a_pagar
      t.datetime :fecha_expedicion
      t.datetime :fecha_vencimiento
      t.integer :IVA

      t.timestamps
    end
  end
end
