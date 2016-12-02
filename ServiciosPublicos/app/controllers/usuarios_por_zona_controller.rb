class UsuariosPorZonaController < ApplicationController
  def index 	
  
  	@personas = Persona.all	
  	
  	
  end
  def get
  	
  end
end
