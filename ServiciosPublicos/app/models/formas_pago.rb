class FormasPago < ApplicationRecord
	belongs_to :cheque
	belongs_to :tarjeta
	has_paper_trail
end
