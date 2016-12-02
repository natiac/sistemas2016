class CrmController < ApplicationController
  def index
  	#@persona = current_user.persona
  	#@facturas = @persona.facturas

  	@persona = Persona.first
  	@facturas = Factura.where(persona_id: @persona.id)
  	# @facturas = @persona.facturas

  	@facturas = Factura.paginate(:page => params[:page], :per_page => 5)

  end


  def show
  	@factura = Factura.find params[:id]
  end

end

