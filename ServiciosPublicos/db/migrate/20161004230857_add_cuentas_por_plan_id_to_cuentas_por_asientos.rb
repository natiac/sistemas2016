class AddCuentasPorPlanIdToCuentasPorAsientos < ActiveRecord::Migration[5.0]
  def change
    add_reference :cuentas_por_asientos, :cuentas_por_plan, foreign_key: true
  end
end
