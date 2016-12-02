class PlanDeCuentasController < ApplicationController
  before_action :set_plan_de_cuenta, only: [:show, :edit, :update, :destroy]
  before_action :set_paper_trail_whodunnit
  # GET /plan_de_cuentas
  # GET /plan_de_cuentas.json
  def index
    @plan_de_cuentas = PlanDeCuenta.all
    @cuentas=Cuenta.all
  end

  # GET /plan_de_cuentas/1
  # GET /plan_de_cuentas/1.json
  def show
  end

  # GET /plan_de_cuentas/new
  def new
    @plan_de_cuenta = PlanDeCuenta.new
  end

  # GET /plan_de_cuentas/1/edit
  def edit
  end

  # POST /plan_de_cuentas
  # POST /plan_de_cuentas.json
  def create
    @plan_de_cuenta = PlanDeCuenta.new(plan_de_cuenta_params)

    respond_to do |format|
      if @plan_de_cuenta.save
        format.html { redirect_to @plan_de_cuenta, notice: 'Plan de cuenta creado con exito.' }
        format.json { render :show, status: :created, location: @plan_de_cuenta }
      else
        format.html { render :new }
        format.json { render json: @plan_de_cuenta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plan_de_cuentas/1
  # PATCH/PUT /plan_de_cuentas/1.json
  def update
    respond_to do |format|
      if @plan_de_cuenta.update(plan_de_cuenta_params)
        format.html { redirect_to @plan_de_cuenta, notice: 'Plan de cuenta actualizado con exito' }
        format.json { render :show, status: :ok, location: @plan_de_cuenta }
      else
        format.html { render :edit }
        format.json { render json: @plan_de_cuenta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_de_cuentas/1
  # DELETE /plan_de_cuentas/1.json
  def destroy
    @plan_de_cuenta.destroy
    respond_to do |format|
      format.html { redirect_to plan_de_cuentas_url, notice: 'Plan de cuenta eliminado con exito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan_de_cuenta
      @plan_de_cuenta = PlanDeCuenta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plan_de_cuenta_params
      params.require(:plan_de_cuenta).permit(:version, :estado)
    end
end
