class MovimientoDeCajasDetalle < ApplicationRecord
	belongs_to :movimiento_caja
	belongs_to :valores_de_pago
	belongs_to :factura
	has_paper_trail
end
