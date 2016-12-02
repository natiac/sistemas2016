class AddTipoPersonaIdToPersonas < ActiveRecord::Migration[5.0]
  def change
    add_reference :personas, :tipo_persona, foreign_key: true
  end
end
