class CuentasPorAsientosController < ApplicationController
  before_action :set_cuentas_por_asiento, only: [:show, :edit, :update, :destroy]
  before_action :set_paper_trail_whodunnit
  # GET /cuentas_por_asientos
  # GET /cuentas_por_asientos.json
  def index
    @cuentas_por_asientos = CuentasPorAsiento.all
  end

  # GET /cuentas_por_asientos/1
  # GET /cuentas_por_asientos/1.json
  def show
  end

  # GET /cuentas_por_asientos/new
  def new
    @cuentas_por_asiento = CuentasPorAsiento.new
  end

  # GET /cuentas_por_asientos/1/edit
  def edit
  end

  # POST /cuentas_por_asientos
  # POST /cuentas_por_asientos.json
  def create
    @cuentas_por_asiento = CuentasPorAsiento.new(cuentas_por_asiento_params)

    respond_to do |format|
      if @cuentas_por_asiento.save
        format.html { redirect_to @cuentas_por_asiento, notice: 'Cuentas por asiento was successfully created.' }
        format.json { render :show, status: :created, location: @cuentas_por_asiento }
      else
        format.html { render :new }
        format.json { render json: @cuentas_por_asiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuentas_por_asientos/1
  # PATCH/PUT /cuentas_por_asientos/1.json
  def update
    respond_to do |format|
      if @cuentas_por_asiento.update(cuentas_por_asiento_params)
        format.html { redirect_to @cuentas_por_asiento, notice: 'Cuentas por asiento was successfully updated.' }
        format.json { render :show, status: :ok, location: @cuentas_por_asiento }
      else
        format.html { render :edit }
        format.json { render json: @cuentas_por_asiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuentas_por_asientos/1
  # DELETE /cuentas_por_asientos/1.json
  def destroy
    @cuentas_por_asiento.destroy
    respond_to do |format|
      format.html { redirect_to cuentas_por_asientos_url, notice: 'Cuentas por asiento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuentas_por_asiento
      @cuentas_por_asiento = CuentasPorAsiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cuentas_por_asiento_params
      params.require(:cuentas_por_asiento).permit(:columna, :monto, :observacion)
    end
end
