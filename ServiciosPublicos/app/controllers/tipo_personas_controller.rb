class TipoPersonasController < ApplicationController
  before_action :set_tipo_persona, only: [:show, :edit, :update, :destroy]
  before_action :set_paper_trail_whodunnit
  # GET /tipos_personas
  # GET /tipos_personas.json
  def index
    @tipos_personas = TipoPersona.all
  end

  # GET /tipos_personas/1
  # GET /tipos_personas/1.json
  def show
  end

  # GET /tipos_personas/new
  def new
    @tipo_persona = TipoPersona.new
  end

  # GET /tipos_personas/1/edit
  def edit
  end

  # POST /tipos_personas
  # POST /tipos_personas.json
  def create
    @tipo_persona = TipoPersona.new(tipo_persona_params)

    respond_to do |format|
      if @tipo_persona.save
        format.html { redirect_to @tipo_persona, notice: 'Tipo persona was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_persona }
      else
        format.html { render :new }
        format.json { render json: @tipo_persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipos_personas/1
  # PATCH/PUT /tipos_personas/1.json
  def update
    respond_to do |format|
      if @tipo_persona.update(tipo_persona_params)
        format.html { redirect_to @tipo_persona, notice: 'Tipo persona was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_persona }
      else
        format.html { render :edit }
        format.json { render json: @tipo_persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipos_personas/1
  # DELETE /tipos_personas/1.json
  def destroy
    @tipo_persona.destroy
    respond_to do |format|
      format.html { redirect_to tipos_personas_url, notice: 'Tipo persona was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_persona
      @tipo_persona = TipoPersona.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_persona_params
      params.require(:tipo_persona).permit(:tipo)
    end
end
