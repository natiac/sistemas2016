class FacturasDetallesController < ApplicationController
  before_action :set_facturas_detalle, only: [:show, :edit, :update, :destroy]
  before_action :set_paper_trail_whodunnit
  # GET /facturas_detalles
  # GET /facturas_detalles.json
  def index
    @facturas_detalles = FacturasDetalle.all
  end

  # GET /facturas_detalles/1
  # GET /facturas_detalles/1.json
  def show
  end

  # GET /facturas_detalles/new
  def new
    @facturas_detalle = FacturasDetalle.new
  end

  # GET /facturas_detalles/1/edit
  def edit
  end

  # POST /facturas_detalles
  # POST /facturas_detalles.json
  def create
    @facturas_detalle = FacturasDetalle.new(facturas_detalle_params)

    respond_to do |format|
      if @facturas_detalle.save
        format.html { redirect_to @facturas_detalle, notice: 'Facturas detalle was successfully created.' }
        format.json { render :show, status: :created, location: @facturas_detalle }
      else
        format.html { render :new }
        format.json { render json: @facturas_detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facturas_detalles/1
  # PATCH/PUT /facturas_detalles/1.json
  def update
    respond_to do |format|
      if @facturas_detalle.update(facturas_detalle_params)
        format.html { redirect_to @facturas_detalle, notice: 'Facturas detalle was successfully updated.' }
        format.json { render :show, status: :ok, location: @facturas_detalle }
      else
        format.html { render :edit }
        format.json { render json: @facturas_detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facturas_detalles/1
  # DELETE /facturas_detalles/1.json
  def destroy
    @facturas_detalle.destroy
    respond_to do |format|
      format.html { redirect_to facturas_detalles_url, notice: 'Facturas detalle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facturas_detalle
      @facturas_detalle = FacturasDetalle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def facturas_detalle_params
      params.require(:facturas_detalle).permit(:factura_id, :monto, :IVA, :lectura_id, :concepto_id)
    end
end
