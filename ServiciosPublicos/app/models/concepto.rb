class Concepto < ApplicationRecord
	has_many :facturas_detalles
	has_many :ordenes_consumos_detalles

	def to_s
    nombre
  end
end
