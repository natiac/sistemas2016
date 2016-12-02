class AddAsientoIdToCuentasPorAsientos < ActiveRecord::Migration[5.0]
  def change
    add_reference :cuentas_por_asientos, :asiento, foreign_key: true
  end
end
