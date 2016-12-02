class AddTarjetaIdToFormasPagos < ActiveRecord::Migration[5.0]
  def change
    add_reference :formas_pagos, :tarjeta, foreign_key: true
  end
end
