class OrdenesDeConsumo < ApplicationRecord
	has_many :ordenes_consumos_detalles, dependent: :destroy
	has_many :conceptos
	belongs_to :persona
	belongs_to :medidor
	belongs_to :tipo_factura
	belongs_to :servicio
	delegate :tipo_factura_descripcion, to: :tipo_factura, prefix: false
	#validates :numero, presence: true
	accepts_nested_attributes_for :ordenes_consumos_detalles
	


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

  	def generar_facturas
		factura = Factura.new(
		 persona_id: self.persona_id,
		 servicio_id: self.servicio_id,
		 medidor_id: self.medidor_id,
		 fecha_expedicion: self.fecha_expedicion,
		 fecha_vencimiento: self.fecha_vencimiento,
		 tipo_factura_id: self.tipo_factura_id,
		 iva: self.IVA,
		 total_a_pagar: self.total_a_pagar)
		self.ordenes_consumos_detalles.each do | detalle|

		factura.facturas_detalles.build(
			concepto_id: detalle.concepto_id,
			monto: detalle.monto,
			IVA: detalle.IVA)
		end
		factura.save
  	end	
  	

  	def self.generar_todas
  		ordenes=  OrdenesDeConsumo.joins(:tipo_factura).where(tipo_facturas: { descripcion: "Pendiente" })
  		ordenes.each do |o|
  			o.generar_facturas
  			o.tipo_factura_id=5
  			o.save
  		end
end

end


