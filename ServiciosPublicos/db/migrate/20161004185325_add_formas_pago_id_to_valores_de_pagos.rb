class AddFormasPagoIdToValoresDePagos < ActiveRecord::Migration[5.0]
  def change
    add_reference :valores_de_pagos, :formas_pago, foreign_key: true
  end
end
