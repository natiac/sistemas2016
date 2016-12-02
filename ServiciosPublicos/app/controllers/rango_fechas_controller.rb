class RangoFechasController < ApplicationController
  before_action :set_rango_fecha, only: [:show, :edit, :update, :destroy]
  before_action :set_paper_trail_whodunnit
  # GET /rango_fechas
  # GET /rango_fechas.json
  def index
    @rango_fechas = RangoFecha.all
  end

  # GET /rango_fechas/1
  # GET /rango_fechas/1.json
  def show
  end

  # GET /rango_fechas/new
  def new
    @rango_fecha = RangoFecha.new
  end

  # GET /rango_fechas/1/edit
  def edit
  end

  # POST /rango_fechas
  # POST /rango_fechas.json
  def create
    @rango_fecha = RangoFecha.new(rango_fecha_params)

    respond_to do |format|
      if @rango_fecha.save
        format.html { redirect_to @rango_fecha, notice: 'Rango fecha was successfully created.' }
        format.json { render :show, status: :created, location: @rango_fecha }
      else
        format.html { render :new }
        format.json { render json: @rango_fecha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rango_fechas/1
  # PATCH/PUT /rango_fechas/1.json
  def update
    respond_to do |format|
      if @rango_fecha.update(rango_fecha_params)
        format.html { redirect_to @rango_fecha, notice: 'Rango fecha was successfully updated.' }
        format.json { render :show, status: :ok, location: @rango_fecha }
      else
        format.html { render :edit }
        format.json { render json: @rango_fecha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rango_fechas/1
  # DELETE /rango_fechas/1.json
  def destroy
    @rango_fecha.destroy
    respond_to do |format|
      format.html { redirect_to rango_fechas_url, notice: 'Rango fecha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rango_fecha
      @rango_fecha = RangoFecha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rango_fecha_params
      params.require(:rango_fecha).permit(:descripcion)
    end
end
