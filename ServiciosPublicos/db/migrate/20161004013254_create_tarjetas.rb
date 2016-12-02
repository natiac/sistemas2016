class CreateTarjetas < ActiveRecord::Migration[5.0]
  def change
    create_table :tarjetas do |t|
      t.integer :nro_verificacion
      t.string :titular
      t.string :categoria_tarjeta
      t.string :tipo_tarjeta

      t.timestamps
    end
  end
end
