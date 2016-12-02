class AuditoriasController < ApplicationController

	def index 
		@auditorias =  PaperTrail::Version.all
		
	end

end
