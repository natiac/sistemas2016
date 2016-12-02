class AddMedidorIdToFacturas < ActiveRecord::Migration[5.0]
  def change
    add_reference :facturas, :medidor, foreign_key: true
  end
end
