class TpersonasController < ApplicationController
  before_action :set_tpersona, only: [:show, :edit, :update, :destroy]
  before_action :set_paper_trail_whodunnit
  # GET /tpersonas
  # GET /tpersonas.json
  def index
    @tpersonas = Tpersona.all
  end

  # GET /tpersonas/1
  # GET /tpersonas/1.json
  def show
  end

  # GET /tpersonas/new
  def new
    @tpersona = Tpersona.new
  end

  # GET /tpersonas/1/edit
  def edit
  end

  # POST /tpersonas
  # POST /tpersonas.json
  def create
    @tpersona = Tpersona.new(tpersona_params)

    respond_to do |format|
      if @tpersona.save
        format.html { redirect_to @tpersona, notice: 'Tpersona was successfully created.' }
        format.json { render :show, status: :created, location: @tpersona }
      else
        format.html { render :new }
        format.json { render json: @tpersona.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tpersonas/1
  # PATCH/PUT /tpersonas/1.json
  def update
    respond_to do |format|
      if @tpersona.update(tpersona_params)
        format.html { redirect_to @tpersona, notice: 'Tpersona was successfully updated.' }
        format.json { render :show, status: :ok, location: @tpersona }
      else
        format.html { render :edit }
        format.json { render json: @tpersona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tpersonas/1
  # DELETE /tpersonas/1.json
  def destroy
    @tpersona.destroy
    respond_to do |format|
      format.html { redirect_to tpersonas_url, notice: 'Tpersona was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tpersona
      @tpersona = Tpersona.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tpersona_params
      params.require(:tpersona).permit(:tipo)
    end
end
