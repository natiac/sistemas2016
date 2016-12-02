class CreateCuentasPorAsientos < ActiveRecord::Migration[5.0]
  def change
    create_table :cuentas_por_asientos do |t|
      t.integer :columna
      t.integer :monto
      t.string :observacion

      t.timestamps
    end
  end
end
