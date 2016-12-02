class FacturasController < ApplicationController
  before_action :set_factura, only: [:show, :edit, :update, :destroy]
  before_action :set_paper_trail_whodunnit
  # GET /facturas
  # GET /facturas.json
  def index
    @facturas = Factura.all
  end

  # GET /facturas/1
  # GET /facturas/1.json
  def show
  end

  # GET /facturas/new
  def new
    #@id=0001
    #@id+=Factura.last.id if Factura.last
    @factura = Factura.new
    @factura.facturas_detalles.build
  end

  # GET /facturas/1/edit
  def edit
    @factura.facturas_detalles.build
  end

  # POST /facturas
  # POST /facturas.json
  def create
    @ordenes_de_consumo = OrdenesDeConsumo.find(params[:id])
    @factura = @ordenes_de_consumo.generar_facturas
    respond_to do |format|
      if @factura.save
        format.html { redirect_to @factura, notice: 'Factura creada con exito.' }
        format.json { render :show, status: :created, location: @factura }
      else
        format.html { render :new }
        format.json { render json: @factura.errors, status: :unprocessable_entity }
      end
    end
  end

  def generar_todas_las_facturas
    OrdenesDeConsumo.generar_todas
    redirect_to facturas_url
  end
  # PATCH/PUT /facturas/1
  # PATCH/PUT /facturas/1.json
  def update
    respond_to do |format|
      if @factura.update(factura_params)
        format.html { redirect_to @factura, notice: 'Factura actualizada con exito.' }
        format.json { render :show, status: :ok, location: @factura }
      else
        format.html { render :edit }
        format.json { render json: @factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facturas/1
  # DELETE /facturas/1.json
  def destroy
    @factura.tipo_factura_id=2
    @factura.save
    respond_to do |format|
      format.html { redirect_to facturas_url, notice: 'La factura fue anulada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factura
      @factura = Factura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def factura_params
      params.require(:factura).permit(
       :numero, 
       :persona_id,
        :medidor_id,
         :servicio_id,
          :fecha_expedicion,
           :fecha_vencimiento,
            :total_a_pagar,
             :iva,
              :facturas_detalles_attributes => [:id, :concepto_id, :monto, :lectura_id, :iva, :_destroy]
              )
    end
end
