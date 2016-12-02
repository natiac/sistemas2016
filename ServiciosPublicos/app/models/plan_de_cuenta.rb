class PlanDeCuenta < ApplicationRecord
	validates :version, :presence=> {message: "Este campo es obligatorio"}
	validates :estado, :presence=> {message: "Este campo es obligatorio"}
	has_paper_trail
end
