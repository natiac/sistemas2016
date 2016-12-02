class CreateValoresDePagos < ActiveRecord::Migration[5.0]
  def change
    create_table :valores_de_pagos do |t|
      t.integer :monto_por_forma_pago

      t.timestamps
    end
  end
end
