class ArqueoCajasController < ApplicationController
  before_action :set_arqueo_caja, only: [:show, :edit, :update, :destroy]
   before_action : set_paper_trail_whodunnit 

  # GET /arqueo_cajas
  # GET /arqueo_cajas.json
  def index
    @arqueo_cajas = ArqueoCaja.all
  end

  # GET /arqueo_cajas/1
  # GET /arqueo_cajas/1.json
  def show
  end

  # GET /arqueo_cajas/new
  def new
    @arqueo_caja = ArqueoCaja.new
  end

  # GET /arqueo_cajas/1/edit
  def edit
  end

  # POST /arqueo_cajas
  # POST /arqueo_cajas.json
  def create
    @arqueo_caja = ArqueoCaja.new(arqueo_caja_params)

    respond_to do |format|
      if @arqueo_caja.save
        format.html { redirect_to @arqueo_caja, notice: 'Arqueo caja was successfully created.' }
        format.json { render :show, status: :created, location: @arqueo_caja }
      else
        format.html { render :new }
        format.json { render json: @arqueo_caja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arqueo_cajas/1
  # PATCH/PUT /arqueo_cajas/1.json
  def update
    respond_to do |format|
      if @arqueo_caja.update(arqueo_caja_params)
        format.html { redirect_to @arqueo_caja, notice: 'Arqueo caja was successfully updated.' }
        format.json { render :show, status: :ok, location: @arqueo_caja }
      else
        format.html { render :edit }
        format.json { render json: @arqueo_caja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arqueo_cajas/1
  # DELETE /arqueo_cajas/1.json
  def destroy
    @arqueo_caja.destroy
    respond_to do |format|
      format.html { redirect_to arqueo_cajas_url, notice: 'Arqueo caja was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arqueo_caja
      @arqueo_caja = ArqueoCaja.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arqueo_caja_params
      params.require(:arqueo_caja).permit(:fecha, :monto_en_caja, :monto_real, :diferencia)
    end
end
