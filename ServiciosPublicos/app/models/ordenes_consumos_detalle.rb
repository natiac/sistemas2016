class OrdenesConsumosDetalle < ApplicationRecord
	belongs_to :ordenes_de_consumo
	belongs_to :concepto
	belongs_to :lectura
	

	

	#validates_numericality_of :monto, greater_than: 0, less_than: 100000000000000000000000000000, alow_nil: false
	#validates_numericality_of :medidor, greater_than: 0, less_than: 100000000000000000000000000000, alow_nil: false
	#validates_numericality_of :numero, greater_than: 0, less_than: 100000000000000000000000000000, alow_nil: false
	#validates_numericality_of :IVA, greater_than: 0, less_than: 100000000000000000000000000000, alow_nil: false
    #validates :medidor, presence: true
   	#validates :IVA, presence: true
   	#validates :tipo_factura , presence:true

end



