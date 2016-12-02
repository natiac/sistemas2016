class AddCajaIdToAperturaCajas < ActiveRecord::Migration[5.0]
  def change
    add_reference :apertura_cajas, :caja, foreign_key: true
  end
end
