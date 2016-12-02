class AddAperturaCajaIdToMovimientoCajas < ActiveRecord::Migration[5.0]
  def change
    add_reference :movimientos_cajas, :apertura_caja, foreign_key: true
  end
end
