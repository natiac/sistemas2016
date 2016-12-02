class ValoresDePagosController < ApplicationController
  before_action :set_valores_de_pago, only: [:show, :edit, :update, :destroy]
  before_action :set_paper_trail_whodunnit
  # GET /valores_de_pagos
  # GET /valores_de_pagos.json
  def index
    @valores_de_pagos = ValoresDePago.all
  end

  # GET /valores_de_pagos/1
  # GET /valores_de_pagos/1.json
  def show
  end

  # GET /valores_de_pagos/new
  def new
    @valores_de_pago = ValoresDePago.new
  end

  # GET /valores_de_pagos/1/edit
  def edit
  end

  # POST /valores_de_pagos
  # POST /valores_de_pagos.json
  def create
    @valores_de_pago = ValoresDePago.new(valores_de_pago_params)

    respond_to do |format|
      if @valores_de_pago.save
        format.html { redirect_to @valores_de_pago, notice: 'Valores de pago was successfully created.' }
        format.json { render :show, status: :created, location: @valores_de_pago }
      else
        format.html { render :new }
        format.json { render json: @valores_de_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /valores_de_pagos/1
  # PATCH/PUT /valores_de_pagos/1.json
  def update
    respond_to do |format|
      if @valores_de_pago.update(valores_de_pago_params)
        format.html { redirect_to @valores_de_pago, notice: 'Valores de pago was successfully updated.' }
        format.json { render :show, status: :ok, location: @valores_de_pago }
      else
        format.html { render :edit }
        format.json { render json: @valores_de_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /valores_de_pagos/1
  # DELETE /valores_de_pagos/1.json
  def destroy
    @valores_de_pago.destroy
    respond_to do |format|
      format.html { redirect_to valores_de_pagos_url, notice: 'Valores de pago was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_valores_de_pago
      @valores_de_pago = ValoresDePago.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def valores_de_pago_params
      params.require(:valores_de_pago).permit(:monto_por_forma_pago)
    end
end
