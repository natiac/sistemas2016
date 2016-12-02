class ChequesController < ApplicationController
  before_action :set_cheque, only: [:show, :edit, :update, :destroy]
  before_action :set_paper_trail_whodunnit
  # GET /cheques
  # GET /cheques.json
  def index
    @movimiento_caja = MovimientoCaja.new
    @movimiento_de_cajas_detalle = MovimientoDeCajasDetalle.new

    @cheques = Cheque.all
    @cheque = Cheque.new
  end

  # GET /cheques/1
  # GET /cheques/1.json
  def show
  end

  # GET /cheques/new
  def new
    @cheque = Cheque.new
  end

  # GET /cheques/1/edit
  def edit
    @cheque = Cheque.find(params[:id])
  end

  # POST /cheques
  # POST /cheques.json
 def create
    @cheque = Cheque.new(cheque_params)

    respond_to do |format|
      if @cheque.save
        format.html { redirect_to :back  }
        format.json { render :show, status: :created, location: @cheque }
        format.js
      else
        format.html { render :new }
        format.json { render json: @cheque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cheques/1
  # PATCH/PUT /cheques/1.json
  def update
    respond_to do |format|
      if @cheque.update(cheque_params)
        format.html { redirect_to cheques_url }
        format.json { render :show, status: :ok, location: @cheque }
      else
        format.html { render :edit }
        format.json { render json: @cheque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cheques/1
  # DELETE /cheques/1.json
  def destroy
    respond_to do |format|
      if @cheque.destroy
        format.html { redirect_to cheques_url }
        format.json { head :no_content }
      else
        format.html { redirect_to cheques_url, notice: 'No se puede eliminar.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cheque
      @cheque = Cheque.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cheque_params
      params.require(:cheque).permit(:titular, :banco, :numero_cheque, :fecha_disponibilidad)
    end
end
