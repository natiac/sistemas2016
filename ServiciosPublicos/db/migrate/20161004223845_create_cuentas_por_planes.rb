class CreateCuentasPorPlanes < ActiveRecord::Migration[5.0]
  def change
    create_table :cuentas_por_planes do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
