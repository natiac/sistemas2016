class CreateArqueoCajas < ActiveRecord::Migration[5.0]
  def change
    create_table :arqueo_cajas do |t|
      t.datetime :fecha
      t.integer :monto_en_caja
      t.integer :monto_real
      t.integer :diferencia

      t.timestamps
    end
  end
end
