class CreateMovimientoDeCajasDetalles < ActiveRecord::Migration[5.0]
  def change
    create_table :movimiento_de_cajas_detalles do |t|
      t.integer :monto_parcial

      t.timestamps
    end
  end
end
