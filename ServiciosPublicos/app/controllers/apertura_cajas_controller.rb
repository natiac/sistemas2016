class AperturaCajasController < ApplicationController
  before_action :set_apertura_caja, only: [:show, :edit, :update, :destroy]

  # GET /apertura_cajas
  # GET /apertura_cajas.json
  def index
    @caja = Caja.new
    @persona = Persona.new
    @apertura_cajas = AperturaCaja.all
    @apertura_caja = AperturaCaja.new
  end

  

  # GET /apertura_cajas/1
  # GET /apertura_cajas/1.json
  def show
  end

  # GET /apertura_cajas/new
  def new
    @apertura_caja = AperturaCaja.new
  end

  # GET /apertura_cajas/1/edit
  def edit
    @apertura_caja = AperturaCaja.find(params[:id])
  end

  # POST /apertura_cajas
  # POST /apertura_cajas.json
   def create
    @apertura_caja = AperturaCaja.new(apertura_caja_params)

    respond_to do |format|
      if @apertura_caja.save
        format.html { redirect_to movimientos_cajas_url(apertura_caja_id: @apertura_caja.id) }
        format.json { render :show, status: :created, location: @apertura_caja }
        format.js
      else
        format.html { render :new }
        format.json { render json: @apertura_caja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apertura_cajas/1
  # PATCH/PUT /apertura_cajas/1.json
 def update
    respond_to do |format|
      if @apertura_caja.update(apertura_caja_params)
        format.html { redirect_to movimientos_cajas_url(apertura_caja_id: @apertura_caja.id) }
        format.json { render :show, status: :ok, location: @apertura_caja }
      else
        format.html { render :edit }
        format.json { render json: @apertura_caja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apertura_cajas/1
  # DELETE /apertura_cajas/1.json
  def destroy
    respond_to do |format|
      if @apertura_caja.destroy
        format.html { redirect_to apertura_cajas_url }
        format.json { head :no_content }
      else
        format.html { redirect_to apertura_cajas_url, notice: 'No se puede eliminar.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apertura_caja
      @apertura_caja = AperturaCaja.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apertura_caja_params
      params.require(:apertura_caja).permit(:id, :caja_id, :monto_apertura, :hora_apertura, :hora_cierre, :monto_cierre, :persona_id)
    end
end
