class AddPersonaIdToMedidores < ActiveRecord::Migration[5.0]
  def change
    add_reference :medidores, :persona, foreign_key: true
  end
end
