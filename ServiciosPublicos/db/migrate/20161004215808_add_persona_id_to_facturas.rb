class AddPersonaIdToFacturas < ActiveRecord::Migration[5.0]
  def change
    add_reference :facturas, :persona, foreign_key: true
  end
end
