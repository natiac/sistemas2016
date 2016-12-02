class OrdenesDeConsumosController < ApplicationController
  before_action :set_ordenes_de_consumo, only: [:show, :edit, :update, :destroy]
  #before_action :set_paper_trail_whodunnit
  # GET /ordenes_de_consumos
  # GET /ordenes_de_consumos.json
  def index
    @ordenes_de_consumos = OrdenesDeConsumo.all.page(params[:page])
  end

  # GET /ordenes_de_consumos/1
  # GET /ordenes_de_consumos/1.json
  def show
  end

  # GET /ordenes_de_consumos/new
  def new

    @ordenes_de_consumo = OrdenesDeConsumo.new
    
    @ordenes_de_consumo.ordenes_consumos_detalles.build
  end

  # GET /ordenes_de_consumos/1/edit
  def edit
     @ordenes_de_consumo.ordenes_consumos_detalles.build
  end

  # POST /ordenes_de_consumos
  # POST /ordenes_de_consumos.json
  def create
    @ordenes_de_consumo = OrdenesDeConsumo.new(ordenes_de_consumo_params)

    respond_to do |format|
      if @ordenes_de_consumo.save
        format.html { redirect_to @ordenes_de_consumo, notice: 'La orden de consumo fue creada con exito.' }
        format.json { render :show, status: :created, location: @ordenes_de_consumo }
      else
        format.html { render :new }
        format.json { render json: @ordenes_de_consumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordenes_de_consumos/1
  # PATCH/PUT /ordenes_de_consumos/1.json
  def update
    respond_to do |format|
      if @ordenes_de_consumo.update(ordenes_de_consumo_params)
        format.html { redirect_to @ordenes_de_consumo, notice: 'La orden de consumo fue modificada.' }
        format.json { render :show, status: :ok, location: @ordenes_de_consumo }
      else
        format.html { render :edit }
        format.json { render json: @ordenes_de_consumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordenes_de_consumos/1
  # DELETE /ordenes_de_consumos/1.json
  def destroy
    @ordenes_de_consumo.destroy
    respond_to do |format|
      format.html { redirect_to ordenes_de_consumos_url, notice: 'La orden de consumo fue eliminada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordenes_de_consumo
      @ordenes_de_consumo = OrdenesDeConsumo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordenes_de_consumo_params
      params.require(:ordenes_de_consumo).permit(
       :persona_id,
        :medidor_id,
         :servicio_id,
          :fecha_expedicion,
           :fecha_vencimiento,
            :total_a_pagar,
             :IVA,
              :ordenes_consumos_detalles_attributes => [:id, :concepto_id, :monto, :lectura_id, :IVA, :_destroy]
              )
    
    end

end
