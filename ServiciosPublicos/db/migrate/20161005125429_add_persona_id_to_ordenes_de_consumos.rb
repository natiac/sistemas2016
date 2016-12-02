class AddPersonaIdToOrdenesDeConsumos < ActiveRecord::Migration[5.0]
  def change
    add_reference :ordenes_de_consumos, :persona, foreign_key: true
  end
end
