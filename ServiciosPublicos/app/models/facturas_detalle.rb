class FacturasDetalle < ApplicationRecord
	belongs_to :factura
	belongs_to :concepto
	belongs_to :lectura


	

    #validates_numericality_of :monto, greater_than: 0, less_than: 100000000000000000000000000000, alow_nil: false
    #validates_numericality_of :IVA, greater_than: 0, less_than: 100000000000000000000000000000, alow_nil: false


	#validates :lectura, presence: true
   	#validates :factura, presence: true
   	#validates :concepto, presence: true
   
end
