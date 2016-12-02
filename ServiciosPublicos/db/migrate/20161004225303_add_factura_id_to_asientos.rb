class AddFacturaIdToAsientos < ActiveRecord::Migration[5.0]
  def change
    add_reference :asientos, :factura, foreign_key: true
  end
end
