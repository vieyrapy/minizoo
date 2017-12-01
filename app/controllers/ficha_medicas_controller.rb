class FichaMedicasController < ApplicationController
  before_action :set_ficha_medica, only: [:show, :edit, :update, :destroy]

  # GET /ficha_medicas
  # GET /ficha_medicas.json
  def index
    @ficha_medicas = FichaMedica.all
    if params[:Buscar]
      @ficha_medicas = FichaMedica.where(["nombre_comun LIKE ?","%#{params[:Buscar]}%"])
    else
      @ficha_medicas = FichaMedica.paginate(:page => params[:page], :per_page => 5)
    end
  end

  # GET /ficha_medicas/1
  # GET /ficha_medicas/1.json
  def show
  end

  # GET /ficha_medicas/new
  def new
    @ficha_medica = FichaMedica.new
    @ficha_medica.tareas.build 
  end

  def agregartareas

  end 

  # GET /ficha_medicas/1/edit
  def edit
    @ficha_medica.tareas.build 
  end

  # POST /ficha_medicas
  # POST /ficha_medicas.json
  def create
    @ficha_medica = FichaMedica.new(ficha_medica_params)

    respond_to do |format|
      if @ficha_medica.save
        format.html { redirect_to @ficha_medica, notice: 'Nueva ficha creada con éxito' }
        format.json { render :show, status: :created, location: @ficha_medica }
      else
        format.html { render :new }
        format.json { render json: @ficha_medica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ficha_medicas/1
  # PATCH/PUT /ficha_medicas/1.json
  def update
    respond_to do |format|
      if @ficha_medica.update(ficha_medica_params)
        format.html { redirect_to @ficha_medica, notice: 'Ficha actualizada con éxito.' }
        format.json { render :show, status: :ok, location: @ficha_medica }
      else
        format.html { render :edit }
        format.json { render json: @ficha_medica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ficha_medicas/1
  # DELETE /ficha_medicas/1.json
  def destroy
    @ficha_medica.destroy
    respond_to do |format|
      format.html { redirect_to ficha_medicas_url, notice: 'Ficha medica eliminada con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ficha_medica
      @ficha_medica = FichaMedica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ficha_medica_params
      params.require(:ficha_medica).permit( :enfermedad, :dolencia, :descripcion, :archivos, :internacion, :animal_id, :audio, :video, :veterinario, :activo, :tratamiento,  :estado_medico_id,:alta_cuarentena, tareas_attributes: [ :id, :fecha, :terminado, :ficha_medica_id, :medicamento ])
    end
end
