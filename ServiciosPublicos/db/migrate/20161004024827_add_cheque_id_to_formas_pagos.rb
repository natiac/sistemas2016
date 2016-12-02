class AddChequeIdToFormasPagos < ActiveRecord::Migration[5.0]
  def change
    add_reference :formas_pagos, :cheque, foreign_key: true
  end
end
