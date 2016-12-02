class Servicio < ApplicationRecord
	has_many :rango_fechas
	has_many :personas
	has_many :medidores
	has_paper_trail

	def servicio_nombre
    "#{descripcion}"
  end
end
