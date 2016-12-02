class LecturasController < ApplicationController
  before_action :set_lectura, only: [:show, :edit, :update, :destroy]
  before_action :set_paper_trail_whodunnit
  # GET /lecturas
  # GET /lecturas.json
  def index
    @medidor = Medidor.new
    @lectura = Lectura.new
    @lecturas = Lectura.all.order(:created_at).reverse
  end

  # GET /lecturas/1
  # GET /lecturas/1.json
  def show
  end

  # GET /lecturas/new
  def new
    @lectura = Lectura.new
  end

  # GET /lecturas/1/edit
  def edit
  end

  # POST /lecturas
  # POST /lecturas.json
  def create
    @lectura = Lectura.new(lectura_params)

    respond_to do |format|
      if @lectura.save
        format.html { redirect_to @lectura, notice: 'Lectura agregada correctamente' }
        format.json { render :show, status: :created, location: @lectura }
      else
        format.html { render :new }
        format.json { render json: @lectura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lecturas/1
  # PATCH/PUT /lecturas/1.json
  def update
    respond_to do |format|
      if @lectura.update(lectura_params)
        format.html { redirect_to @lectura, notice: 'Lectura actualizada' }
        format.json { render :show, status: :ok, location: @lectura }
      else
        format.html { render :edit }
        format.json { render json: @lectura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lecturas/1
  # DELETE /lecturas/1.json
  def destroy
    @lectura.destroy
    respond_to do |format|
      format.html { redirect_to lecturas_url, notice: 'Se eliminó la lectura' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lectura
      @lectura = Lectura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lectura_params
      params.require(:lectura).permit(
        :id,
        :medidor_id,
        :lectura_anterior,
        :lectura_actual,
        :fecha_anterior,
        :fecha_actual)
    end
end
