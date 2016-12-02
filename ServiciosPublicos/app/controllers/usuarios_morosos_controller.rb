class UsuariosMorososController < ApplicationController
  
  def index
  	@facturasmorosas = OrdenesDeConsumo.all
  end
end
