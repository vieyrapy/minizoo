class AnimalesController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :update, :destroy]


  # GET /animales
  # GET /animales.json
  def index
    if params[:Buscar]
      @animales = Animal.where(["nombre_comun LIKE ?","%#{params[:Buscar]}%"])
    else
      @animales = Animal.paginate(:page => params[:page], :per_page => 5)
    end  
  end

  # GET /animales/1
  # GET /animales/1.json
  def show
    #@ficha = @animales.ficha_medicas.create(params[:ficha])
    #@edad = Animal.find(params[:id])
    #@edad = (:fecha - DateTime.now).to_i
  end

  # GET /animales/new
  def new
    @animal = Animal.new
  end

  # GET /animales/1/edit
  def edit
  end

  # POST /animales
  # POST /animales.json
  def create
    @animal = Animal.new(animal_params)

    respond_to do |format|
      if @animal.save
        format.html { redirect_to @animal, notice: 'Nuevo animal creado con éxito.' }
        format.json { render :show, status: :created, location: @animal }
      else
        format.html { render :new }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animales/1
  # PATCH/PUT /animales/1.json
  def update
    respond_to do |format|
      if @animal.update(animal_params)
        format.html { redirect_to @animal, notice: 'Datos de Animal actualizado' }
        format.json { render :show, status: :ok, location: @animal }
      else
        format.html { render :edit }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animales/1
  # DELETE /animales/1.json
  def destroy
    @animal.destroy
    respond_to do |format|
      format.html { redirect_to animales_url, notice: 'Ha eliminado un animal' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal
      @animal = Animal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def animal_params
      params.require(:animal).permit(:nombre_cientifico, :nombre_comun, :edad, :origen, :descripcion, :alimento_id, :cite_id, :estado_conservacion_id, :sexo, :identificador, :especie, :familia )
    end
end
