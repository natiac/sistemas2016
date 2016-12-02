class CuentasPorPlanesController < ApplicationController
  before_action :set_cuentas_por_plan, only: [:show, :edit, :update, :destroy]
  before_action :set_paper_trail_whodunnit
  # GET /cuentas_por_planes
  # GET /cuentas_por_planes.json
  def index
    @cuentas_por_planes = CuentasPorPlan.all
  end

  # GET /cuentas_por_planes/1
  # GET /cuentas_por_planes/1.json
  def show
  end

  # GET /cuentas_por_planes/new
  def new
    @cuentas_por_plan = CuentasPorPlan.new
  end

  # GET /cuentas_por_planes/1/edit
  def edit
  end

  # POST /cuentas_por_planes
  # POST /cuentas_por_planes.json
  def create
    @cuentas_por_plan = CuentasPorPlan.new(cuentas_por_plan_params)

    respond_to do |format|
      if @cuentas_por_plan.save
        format.html { redirect_to @cuentas_por_plan, notice: 'Cuentas por plan was successfully created.' }
        format.json { render :show, status: :created, location: @cuentas_por_plan }
      else
        format.html { render :new }
        format.json { render json: @cuentas_por_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuentas_por_planes/1
  # PATCH/PUT /cuentas_por_planes/1.json
  def update
    respond_to do |format|
      if @cuentas_por_plan.update(cuentas_por_plan_params)
        format.html { redirect_to @cuentas_por_plan, notice: 'Cuentas por plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @cuentas_por_plan }
      else
        format.html { render :edit }
        format.json { render json: @cuentas_por_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuentas_por_planes/1
  # DELETE /cuentas_por_planes/1.json
  def destroy
    @cuentas_por_plan.destroy
    respond_to do |format|
      format.html { redirect_to cuentas_por_planes_url, notice: 'Cuentas por plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuentas_por_plan
      @cuentas_por_plan = CuentasPorPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cuentas_por_plan_params
      params.require(:cuentas_por_plan).permit(:descripcion)
    end
end
