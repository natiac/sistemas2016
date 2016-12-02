class CreateFormasPagos < ActiveRecord::Migration[5.0]
  def change
    create_table :formas_pagos do |t|
      t.integer :efectivo

      t.timestamps
    end
  end
end
