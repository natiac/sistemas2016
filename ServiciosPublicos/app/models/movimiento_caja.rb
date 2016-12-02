class MovimientoCaja < ApplicationRecord
	extend Enumerize
	enumerize :tipo, in: [:Entrada, :Salida], default: :Entrada
	belongs_to :persona
	belongs_to :apertura_caja
	belongs_to :caja
	has_many :movimientos_de_cajas_detalles, dependent: :restrict_with_error
	accepts_nested_attributes_for :movimientos_de_cajas_detalles, allow_destroy: true
	validates :caja_id, presence: true
  	validates :descripcion, length: {maximum: 50}
  	has_paper_trail
end
