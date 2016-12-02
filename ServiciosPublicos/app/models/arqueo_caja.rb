class ArqueoCaja < ApplicationRecord
	belongs_to :caja
	has_paper_trail
end
