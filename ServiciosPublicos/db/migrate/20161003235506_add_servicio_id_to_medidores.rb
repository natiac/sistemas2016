class AddServicioIdToMedidores < ActiveRecord::Migration[5.0]
  def change
    add_reference :medidores, :servicio, foreign_key: true
  end
end
