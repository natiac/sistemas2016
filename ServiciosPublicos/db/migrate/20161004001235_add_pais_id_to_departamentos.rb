class AddPaisIdToDepartamentos < ActiveRecord::Migration[5.0]
  def change
    add_reference :departamentos, :pais, foreign_key: true
  end
end
