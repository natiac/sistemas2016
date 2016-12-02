class CreateMovimientosCajas < ActiveRecord::Migration[5.0]
  def change
    create_table :movimientos_cajas do |t|
      t.string :tipo
      t.string :descripcion
      t.integer :monto_total

      t.timestamps
    end
  end
end
