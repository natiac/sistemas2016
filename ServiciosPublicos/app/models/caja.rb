class Caja < ApplicationRecord
	extend Enumerize
	enumerize :estado, in: [:Cerrado, :Abierto], default: :Cerrado
  	belongs_to :persona
	has_many :movimientos_cajas, dependent: :restrict_with_error
	has_many :apertura_cajas, dependent: :restrict_with_error
	validates :numero_caja, presence: true, :uniqueness => {:message => "Ya existe una caja con ese número"}
	has_paper_trail
end
