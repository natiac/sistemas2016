class CajasController < ApplicationController
  before_action :set_caja, only: [:show, :edit, :update, :destroy]
  before_action :set_paper_trail_whodunnit
  # GET /cajas
  # GET /cajas.json
    def index
    @apertura_cajas = AperturaCaja.all
    @apertura_caja = AperturaCaja.new
    @caja = Caja.new
    @cajas = Caja.all.order('numero_caja asc')
     respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @cajas }
    end
  end
  

  # GET /cajas/1
  # GET /cajas/1.json
  def show
  end

  # GET /cajas/new
  def new
    @caja = Caja.new
  end

  # GET /cajas/1/edit
  def edit
    @caja = Caja.find(params[:id])
  end

  # POST /cajas
  # POST /cajas.json
 def create
    @caja = Caja.new(caja_params)

    respond_to do |format|
      if @caja.save
        format.html { redirect_to cajas_url }
        format.json { render :show, status: :created, location: @caja }
      else
        format.html { render :new }
        format.json { render json: @caja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cajas/1
  # PATCH/PUT /cajas/1.json
   def update
    respond_to do |format|
      if @caja.update(caja_params)
        format.html { redirect_to cajas_url }
        format.json { render :show, status: :ok, location: @caja }
      else
        format.html { render :edit }
        format.json { render json: @caja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cajas/1
  # DELETE /cajas/1.json
   def destroy
    respond_to do |format|
      if @caja.destroy
        format.html { redirect_to cajas_url }
        format.json { head :no_content }
      else
        format.html { redirect_to cajas_url, notice: 'No se puede eliminar.' }
        format.json { head :no_content }
      end
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caja
      @caja = Caja.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caja_params
      params.require(:caja).permit(:hora_apertura, :monto_apertura, :hora_cierre, :monto_cierre, :persona_id, :numero_caja, :estado)
    end
  
end
