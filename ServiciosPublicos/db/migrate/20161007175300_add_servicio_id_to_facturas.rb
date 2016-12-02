class AddServicioIdToFacturas < ActiveRecord::Migration[5.0]
  def change
    add_reference :facturas, :servicio, foreign_key: true
  end
end
