class Factura < ApplicationRecord
	has_many :facturas_detalles, dependent: :destroy
	has_many :conceptos 
	belongs_to :persona
	belongs_to :medidor
	belongs_to :tipo_factura
	belongs_to :servicio
	

	#validates :numero, presence: true
	 accepts_nested_attributes_for :facturas_detalles
  	
    has_paper_trail
	

    def cliente_nombre_completo
	    persona.nil? ? "" : persona.nombre_completo
  	end

  	def obtener_servicio
	    servicio.nil? ? "" : servicio.servicio_nombre
  	end
  	def obtener_medidor
	    medidor.nil? ? "" : medidor.medidor_numero
  	end
  	def obtener_estado
	    tipo_factura.nil? ? "" : tipo_factura.estado_nombre
  	end
end
