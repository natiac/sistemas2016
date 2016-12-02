class Ejercicio < ApplicationRecord
	extend Enumerize
	enumerize :estado, in: [:Disponible, :No_Disponible], default: :Disponible
	validates :anho, :presence=> {message: "Este campo es obligatorio"}
	validates :estado, :presence=> {message: "Este campo es obligatorio"}
	has_paper_trail
end
