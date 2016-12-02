class Lectura < ApplicationRecord
	belongs_to :medidor, :foreign_key => "medidor_id"
	has_many :facturas_detalles
	validates :medidor_id, :presence => {:message => "Este campo es obligatorio; ingrese un medidor"}
	validates :lectura_actual, :presence => {:message => "Este campo es obligatorio; ingrese lectura registrada"}
	validates :fecha_actual, :presence => {:message => "Este campo es obligatorio; ingrese fecha de registro"}
	
	delegate :persona, :persona_id, to: :medidor, prefix: false
	delegate :servicio, :servicio_id, to: :medidor, prefix: false
	delegate :costo_unitario, to: :servicio, prefix: false
	

	after_create :crear_orden_de_consumo
	has_paper_trail

	
	def crear_orden_de_consumo
		# Calcular consumo
		consumo = self.lectura_actual - self.lectura_anterior
		costo = (consumo * self.costo_unitario)
		iva = (costo * 0.1)

		orden_consumo = OrdenesDeConsumo.new(
		 persona_id: self.persona_id,
		 servicio_id: self.servicio_id,
		 medidor_id: self.medidor_id,
		 fecha_expedicion: Date.today,
		 fecha_vencimiento: Date.today + 10.days,
		 tipo_factura_id: 1,
		 IVA: iva,
		 total_a_pagar: costo)

		orden_consumo.ordenes_consumos_detalles.build(
			concepto_id: 1,
			monto: costo,
			IVA: iva)
		orden_consumo.save
	end
	
end

