class AddCuentaIdToCuentasPorPlanes < ActiveRecord::Migration[5.0]
  def change
    add_reference :cuentas_por_planes, :cuenta, foreign_key: true
  end
end
