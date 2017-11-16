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

  def ficha
    #Para implementar el boton en el show primero traemos la funcion set_animal 
    @animal = Animal.find(params[:id])
    # Condicionamos el boton si hace clic en el trae pdf
    if params[:id]
        respond_to do |format|
        format.html
        format.pdf {render template: 'animales/ficha', pdf:'ficha'}
      end
    else
    end 
  end

  # GET /animales/1
  # GET /animales/1.json
  def show
    #Calcular edad de los animales 
    # Al ser en show no necesitamos condicionar con un if params id ya que por defecto rails hace esa comparacion 
    # en el show para mostrar ese ID en especifico 
    
    @edad = (((@animal.edad) - (DateTime.now))).to_i / (-31629805)
   
    
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
      params.require(:animal).permit(:nombre_cientifico, :nombre_comun, :edad, :origen, :descripcion, :alimento_id, :cite_id, :estado_conservacion_id, :sexo, :identificador,  :familia, :especie_id  )
    end
end
