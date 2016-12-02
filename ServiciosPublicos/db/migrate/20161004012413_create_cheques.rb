class CreateCheques < ActiveRecord::Migration[5.0]
  def change
    create_table :cheques do |t|
      t.string :titular
      t.string :banco
      t.integer :numero_cheque
      t.date :fecha_disponibilidad

      t.timestamps
    end
  end
end
