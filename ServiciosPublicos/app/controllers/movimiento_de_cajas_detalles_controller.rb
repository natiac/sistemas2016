class MovimientoDeCajasDetallesController < ApplicationController
  before_action :set_movimiento_de_cajas_detalle, only: [:show, :edit, :update, :destroy]
  before_action :set_paper_trail_whodunnit
  # GET /movimiento_de_cajas_detalles
  # GET /movimiento_de_cajas_detalles.json
  def index
    movimiento_caja = MovimientoCaja.find(params[:movimiento_caja_id])
    @movimiento_de_cajas_detalles = movimiento_caja.movimiento_de_cajas_detalles
  end

  # GET /movimiento_de_cajas_detalles/1
  # GET /movimiento_de_cajas_detalles/1.json
  def show
    movimiento_caja = MovimientoCaja.find(params[:movimiento_caja_id])
    @movimiento_de_cajas_detalles = movimiento_caja.movimiento_de_cajas_detalles.find(params[:id])
  end

  # GET /movimiento_de_cajas_detalles/new
  def new
     movimiento_caja = MovimientoCaja.find(params[:movimiento_caja_id])
  end

  # GET /movimiento_de_cajas_detalles/1/edit
  def edit
    movimiento_caja = MovimientoCaja.find(params[:movimiento_caja_id])
    @movimiento_de_cajas_detalle = movimiento_de_caja.movimiento_de_cajas_detalles.find(params[:id])
  end

  # POST /movimiento_de_cajas_detalles
  # POST /movimiento_de_cajas_detalles.json
  def create
    movimiento_caja = MovimientoCaja.find(params[:movimiento_caja_id])
    @movimiento_de_cajas_detalle = movimiento_caja.movimiento_de_cajas_detalles.create(params[:movimiento_caja])
    respond_to do |format|
      if @movimiento_de_cajas_detalle.save
        format.html { redirect_to [@movimiento_de_cajas_detalle.movimiento_caja, @movimiento_de_cajas_detalle] }
        format.json { render :show, status: :created, location: [@movimiento_de_cajas_detalle.movimiento_caja, @movimiento_de_cajas_detalle] }
      else
        format.html { render :new }
        format.json { render json: @movimiento_de_cajas_detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movimiento_de_cajas_detalles/1
  # PATCH/PUT /movimiento_de_cajas_detalles/1.json
  def update
    movimiento_caja = MovimientoCaja.find(params[:movimiento_caja_id])
    @movimiento_de_cajas_detalle = movimiento_caja.movimiento_de_cajas_detalles.find(params[:id])
    respond_to do |format|
      if @movimiento_de_cajas_detalle.update(movimiento_de_cajas_detalle_params)
        format.html { redirect_to [@movimiento_de_cajas_detalle.movimiento_caja, @movimiento_de_cajas_detalle] }
        format.json { render :show, status: :ok, location: [@movimiento_de_cajas_detalle.movimiento_caja, @movimiento_de_cajas_detalle] }
      else
        format.html { render :edit }
        format.json { render json: @movimiento_de_cajas_detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movimiento_de_cajas_detalles/1
  # DELETE /movimiento_de_cajas_detalles/1.json
  def destroy
    movimiento_caja = MovimientoCaja.find(params[:movimiento_caja_id])
    @movimiento_de_cajas_detalle = movimiento_caja.movimiento_de_cajas_detalles.find(params[:id])
    @movimiento_de_cajas_detalle.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimiento_de_cajas_detalle
      @movimiento_de_cajas_detalle = MovimientoDeCajasDetalle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movimiento_de_cajas_detalle_params
      params.require(:movimiento_de_cajas_detalle).permit(:movimiento_caja_id, :factura_id, :valores_de_pago_id, :monto_parcial)
    end

    def set_movimiento_de_caja
      @movimiento_caja = MovimientoCaja.find(params[:movimiento_caja_id])
    end
end
