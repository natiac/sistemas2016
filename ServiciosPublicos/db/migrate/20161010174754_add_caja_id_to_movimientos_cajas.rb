class AddCajaIdToMovimientosCajas < ActiveRecord::Migration[5.0]
  def change
    add_reference :movimientos_cajas, :caja, foreign_key: true
  end
end
