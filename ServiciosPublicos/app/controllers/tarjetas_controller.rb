class TarjetasController < ApplicationController
  before_action :set_tarjeta, only: [:show, :edit, :update, :destroy]
  before_action :set_paper_trail_whodunnit
  # GET /tarjetas
  # GET /tarjetas.json
  def index
    @tarjetas = Tarjeta.all
  end

  # GET /tarjetas/1
  # GET /tarjetas/1.json
  def show
  end

  # GET /tarjetas/new
  def new
    @tarjeta = Tarjeta.new
  end

  # GET /tarjetas/1/edit
  def edit
  end

  # POST /tarjetas
  # POST /tarjetas.json
  def create
    @tarjeta = Tarjeta.new(tarjeta_params)

    respond_to do |format|
      if @tarjeta.save
        format.html { redirect_to @tarjeta, notice: 'Tarjeta was successfully created.' }
        format.json { render :show, status: :created, location: @tarjeta }
      else
        format.html { render :new }
        format.json { render json: @tarjeta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tarjetas/1
  # PATCH/PUT /tarjetas/1.json
  def update
    respond_to do |format|
      if @tarjeta.update(tarjeta_params)
        format.html { redirect_to @tarjeta, notice: 'Tarjeta was successfully updated.' }
        format.json { render :show, status: :ok, location: @tarjeta }
      else
        format.html { render :edit }
        format.json { render json: @tarjeta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tarjetas/1
  # DELETE /tarjetas/1.json
  def destroy
    @tarjeta.destroy
    respond_to do |format|
      format.html { redirect_to tarjetas_url, notice: 'Tarjeta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarjeta
      @tarjeta = Tarjeta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tarjeta_params
      params.require(:tarjeta).permit(:nro_verificacion, :titular, :categoria_tarjeta, :tipo_tarjeta)
    end
end
