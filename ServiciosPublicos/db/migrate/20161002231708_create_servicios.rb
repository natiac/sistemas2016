class CreateServicios < ActiveRecord::Migration[5.0]
  def change
    create_table :servicios do |t|
      t.integer :consumo_minimo
      t.integer :costo_unitario
      t.string :unidad_medida
      t.string :descripcion
      t.timestamps
    end
  end
end