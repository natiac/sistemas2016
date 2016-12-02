class ConexionesDeUsuarioController < ApplicationController
  def index
  	@conexiones = Medidor.all
  end
end
