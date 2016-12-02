class AddPersonaIdToMovimientoCajas < ActiveRecord::Migration[5.0]
  def change
    add_reference :movimientos_cajas, :persona, foreign_key: true
  end
end
