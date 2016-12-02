class AddFacturaIdToValoresDePagos < ActiveRecord::Migration[5.0]
  def change
    add_reference :valores_de_pagos, :factura, foreign_key: true
  end
end
