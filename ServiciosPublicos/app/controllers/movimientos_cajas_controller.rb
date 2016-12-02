class MovimientosCajasController < ApplicationController
  before_action :set_movimiento_caja, only: [:show, :edit, :update, :destroy]
  before_action :set_paper_trail_whodunnit
  # GET /movimientos_cajas
  # GET /movimientos_cajas.json
  def index
    @cheque = Cheque.new
    @tarjeta= Tarjeta.new
    @persona = Persona.new
    @caja = Caja.all
    apertura_caja = AperturaCaja.where(id: params[:apertura_caja_id])
    @apertura_caja = apertura_caja.empty? ? AperturaCaja.new : apertura_caja.first

    @movimientos_cajas = MovimientoCaja.all
    @movimiento_caja = MovimientoCaja.new
    @movimiento_de_cajas_detalle = MovimientoDeCajasDetalle.new
    @movimiento_de_cajas_detalles = MovimientoDeCajasDetalle.all
  end

  # GET /movimientos_cajas/1
  # GET /movimientos_cajas/1.json
  def show
    @movimiento_de_cajas_detalle = MovimientoDeCajasDetalle.new
    @movimiento_de_cajas_detalles = MovimientoDeCajasDetalle.all
  end

  # GET /movimientos_cajas/new
  def new
    @movimiento_caja = MovimientoCaja.new
    apertura_caja = AperturaCaja.where(id: params[:apertura_caja_id])
  end

  # GET /movimientos_cajas/1/edit
  def edit
 
  end

  # POST /movimientos_cajas
  # POST /movimientos_cajas.json
  def create
    @movimiento_caja = MovimientoCaja.new(movimiento_caja_params)

    respond_to do |format|
      if @movimiento_caja.save
        format.html { redirect_to :back }
        format.json { render :show, status: :created, location: @movimiento_caja }
      else
        format.html { render :new }
        format.json { render json: @movimiento_caja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movimientos_cajas/1
  # PATCH/PUT /movimientos_cajas/1.json
  def update
    respond_to do |format|
      if @movimiento_caja.update(movimiento_caja_params)
        format.html { redirect_to @movimiento_caja }
        format.json { render :show, status: :ok, location: @movimiento_caja }
      else
        format.html { render :edit }
        format.json { render json: @movimiento_caja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movimientos_cajas/1
  # DELETE /movimientos_cajas/1.json
  def destroy
    respond_to do |format|
      if @movimiento_caja.destroy
        format.html { redirect_to :back }
        format.json { head :no_content }
      else
        format.html { redirect_to :back, notice: 'No se puede eliminar.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimiento_caja
      @movimiento_caja = MovimientoCaja.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movimiento_caja_params
      params.require(:movimiento_caja).permit(:caja_id, :apertura_caja_id, :persona_id, :tipo, :descripcion, :monto_total, movimiento_de_cajas_detalles_attributes: [:id, :valores_de_pago_id, :factura_id, :monto_parcial])
    end
end
