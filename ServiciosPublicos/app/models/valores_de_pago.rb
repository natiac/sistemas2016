class ValoresDePago < ApplicationRecord
	belongs_to :formas_pago
	belongs_to :factura
	has_paper_trail
end
