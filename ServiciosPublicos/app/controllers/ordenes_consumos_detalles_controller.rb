class OrdenesConsumosDetallesController < ApplicationController
  before_action :set_ordenes_consumos_detalle, only: [:show, :edit, :update, :destroy]
  before_action :set_paper_trail_whodunnit
  # GET /ordenes_consumos_detalles
  # GET /ordenes_consumos_detalles.json
  def index
    @ordenes_consumos_detalles = OrdenesConsumosDetalle.all
  end

  # GET /ordenes_consumos_detalles/1
  # GET /ordenes_consumos_detalles/1.json
  def show
  end

  # GET /ordenes_consumos_detalles/new
  def new
    @ordenes_consumos_detalle = OrdenesConsumosDetalle.new
  end

  # GET /ordenes_consumos_detalles/1/edit
  def edit
  end

  # POST /ordenes_consumos_detalles
  # POST /ordenes_consumos_detalles.json
  def create
    @ordenes_consumos_detalle = OrdenesConsumosDetalle.new(ordenes_consumos_detalle_params)

    respond_to do |format|
      if @ordenes_consumos_detalle.save
        format.html { redirect_to @ordenes_consumos_detalle, notice: 'Ordenes consumos detalle was successfully created.' }
        format.json { render :show, status: :created, location: @ordenes_consumos_detalle }
      else
        format.html { render :new }
        format.json { render json: @ordenes_consumos_detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordenes_consumos_detalles/1
  # PATCH/PUT /ordenes_consumos_detalles/1.json
  def update
    respond_to do |format|
      if @ordenes_consumos_detalle.update(ordenes_consumos_detalle_params)
        format.html { redirect_to @ordenes_consumos_detalle, notice: 'Ordenes consumos detalle was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordenes_consumos_detalle }
      else
        format.html { render :edit }
        format.json { render json: @ordenes_consumos_detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordenes_consumos_detalles/1
  # DELETE /ordenes_consumos_detalles/1.json
  def destroy
    @ordenes_consumos_detalle.destroy
    respond_to do |format|
      format.html { redirect_to ordenes_consumos_detalles_url, notice: 'Ordenes consumos detalle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordenes_consumos_detalle
      @ordenes_consumos_detalle = OrdenesConsumosDetalle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordenes_consumos_detalle_params
      params.require(:ordenes_consumos_detalle).permit(:ordenes_de_consumo_id,:concepto_id,:lectura_id,:monto, :IVA)
    end
end


