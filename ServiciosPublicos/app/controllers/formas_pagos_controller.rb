class FormasPagosController < ApplicationController
  before_action :set_forma_pago, only: [:show, :edit, :update, :destroy]
  before_action :set_paper_trail_whodunnit
  # GET /formas_pagos
  # GET /formas_pagos.json
  def index
    @formas_pagos = FormasPago.all
  end

  # GET /formas_pagos/1
  # GET /formas_pagos/1.json
  def show
  end

  # GET /formas_pagos/new
  def new
    @forma_pago = FormasPago.new
  end

  # GET /formas_pagos/1/edit
  def edit
  end

  # POST /formas_pagos
  # POST /formas_pagos.json
  def create
    @forma_pago = FormasPago.new(forma_pago_params)

    respond_to do |format|
      if @forma_pago.save
        format.html { redirect_to @forma_pago, notice: 'Formas pago was successfully created.' }
        format.json { render :show, status: :created, location: @forma_pago }
      else
        format.html { render :new }
        format.json { render json: @forma_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formas_pagos/1
  # PATCH/PUT /formas_pagos/1.json
  def update
    respond_to do |format|
      if @forma_pago.update(forma_pago_params)
        format.html { redirect_to @forma_pago, notice: 'Formas pago was successfully updated.' }
        format.json { render :show, status: :ok, location: @forma_pago }
      else
        format.html { render :edit }
        format.json { render json: @forma_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formas_pagos/1
  # DELETE /formas_pagos/1.json
  def destroy
    @forma_pago.destroy
    respond_to do |format|
      format.html { redirect_to formas_pagos_url, notice: 'Formas pago was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forma_pago
      @forma_pago = FormasPago.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forma_pago_params
      params.require(:forma_pago).permit(:efectivo)
    end
end
