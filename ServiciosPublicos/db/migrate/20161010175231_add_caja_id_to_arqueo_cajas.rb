class AddCajaIdToArqueoCajas < ActiveRecord::Migration[5.0]
  def change
    add_reference :arqueo_cajas, :caja, foreign_key: true
  end
end
