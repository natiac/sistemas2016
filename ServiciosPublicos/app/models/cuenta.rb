class Cuenta < ApplicationRecord
		extend Enumerize
	enumerize :tipo, in: [:Activo, :Pasivo, :Patrimonio_Neto, :Ingresos, :Egresos]

	validates :tipo, :presence=> {message: "Este campo es obligatorio"}
	validates :codigo, :presence=> {message: "Este campo es obligatorio"}
	validates :nombre, :presence=> {message: "Este campo es obligatorio"}
	validates :imputable, :presence=> {message: "Este campo es obligatorio"}

has_paper_trail
end
