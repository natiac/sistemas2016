class AddValoresDePagoIdToMovimientoDeCajasDetalles < ActiveRecord::Migration[5.0]
  def change
    add_reference :movimiento_de_cajas_detalles, :valores_de_pago, foreign_key: true
  end
end
