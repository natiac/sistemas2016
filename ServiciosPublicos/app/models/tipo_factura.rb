class TipoFactura < ApplicationRecord
	belongs_to :factura
	belongs_to :ordenes_de_consumo

	def estado_nombre
    "#{descripcion}"
  end
end
