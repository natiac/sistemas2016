class MedidoresController < ApplicationController
  before_action :set_medidor, only: [:show, :edit, :update, :destroy]
  before_action :set_paper_trail_whodunnit
  autocomplete :medidor, :medidor_nro, :display_value => :medidor_nro
  # GET /medidores
  # GET /medidores.json
  def index
    @medidores = Medidor.all
    @persona = Persona.new
    @servicio = Servicio.new
    @medidor = Medidor.new

  end

  # GET /medidores/1
  # GET /medidores/1.json
  def show
  end

  # GET /medidores/new
  def new
    @medidor = Medidor.new

  end

  # GET /medidores/1/edit
  def edit
  end

  # POST /medidores
  # POST /medidores.json
  def create
    @medidor = Medidor.new(medidor_params)

    respond_to do |format|
      if @medidor.save
        format.html { redirect_to @medidor, notice: 'Medidor agregado correctamente.' }
        format.json { render :show, status: :created, location: @medidor }
      else
        format.html { render :new }
        format.json { render json: @medidor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medidores/1
  # PATCH/PUT /medidores/1.json
  def update
    respond_to do |format|
      if @medidor.update(medidor_params)
        format.html { redirect_to @medidor, notice: 'Medidor actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @medidor }
      else
        format.html { render :edit }
        format.json { render json: @medidor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medidores/1
  # DELETE /medidores/1.json
  def destroy
    @medidor.destroy
    respond_to do |format|
      format.html { redirect_to medidores_url, notice: 'Medidor borrado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medidor
      @medidor = Medidor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medidor_params
      params.require(:medidor).permit(:medidor_nro, :persona_id, :servicio_id, :descripcion)
    end
end
