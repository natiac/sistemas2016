class AddMedidorIdToLecturas < ActiveRecord::Migration[5.0]
  def change
    add_reference :lecturas, :medidor, foreign_key: true
  end
end
