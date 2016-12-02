class CreateMedidores < ActiveRecord::Migration[5.0]
  def change
    create_table :medidores do |t|
      t.string :descripcion
      t.integer :medidor_nro
      t.timestamps
    end
  end
end
