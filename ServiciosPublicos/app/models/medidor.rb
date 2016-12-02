class Medidor < ApplicationRecord
	belongs_to :servicio, :foreign_key => "servicio_id"
	belongs_to :persona, :foreign_key => "persona_id"
	has_many :lecturas
	validates :medidor_nro, :presence => {:message => "Este campo es obligatorio; ingrese un numero"}
	validates :persona_id, :presence => {:message => "Este campo es obligatorio; ingrese un Usuario"}
	validates :servicio_id, :presence => {:message => "Este campo es obligatorio; ingrese un Servicio"}
	

	has_paper_trail

	def medidor_numero
    "#{medidor_nro}"
  end
end
