class CreateFacturasDetalles < ActiveRecord::Migration[5.0]
  def change
    create_table :facturas_detalles do |t|
      t.integer :monto
      t.integer :IVA

      t.timestamps
    end
  end
end
