class CreateAperturaCajas < ActiveRecord::Migration[5.0]
  def change
    create_table :apertura_cajas do |t|
      t.integer :monto_apertura
      t.datetime :hora_apertura
      t.datetime :hora_cierre
      t.integer :monto_cierre

      t.timestamps
    end
  end
end
