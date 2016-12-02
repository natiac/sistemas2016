class CreateFacturas < ActiveRecord::Migration[5.0]
  def change
    create_table :facturas do |t|
      t.integer :numero
      t.datetime :fecha_expedicion
      t.datetime :fecha_vencimiento
      t.integer :iva
      t.integer :total_a_pagar

      t.timestamps
    end
  end
end
