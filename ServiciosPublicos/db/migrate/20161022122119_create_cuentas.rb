class CreateCuentas < ActiveRecord::Migration[5.0]
  def change
    create_table :cuentas do |t|
      t.string :nombre
      t.string :tipo
      t.string :codigo
      t.string :imputable

      t.timestamps
    end
  end
end
