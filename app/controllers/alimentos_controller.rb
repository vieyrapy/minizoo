class AlimentosController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only
  before_action :set_alimento, only: [:show, :edit, :update, :destroy]

  # GET /alimentos
  # GET /alimentos.json
  def index
    @alimentos = Alimento.all
  end

  # GET /alimentos/1
  # GET /alimentos/1.json
  def show
  end

  # GET /alimentos/new
  def new
    @alimento = Alimento.new
  end

  # GET /alimentos/1/edit
  def edit
  end

  # POST /alimentos
  # POST /alimentos.json
  def create
    @alimento = Alimento.new(alimento_params)

    respond_to do |format|
      if @alimento.save
        format.html { redirect_to @alimento, notice: 'Nuevo tipo de alimento creado con éxito' }
        format.json { render :show, status: :created, location: @alimento }
      else
        format.html { render :new }
        format.json { render json: @alimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alimentos/1
  # PATCH/PUT /alimentos/1.json
  def update
    respond_to do |format|
      if @alimento.update(alimento_params)
        format.html { redirect_to @alimento, notice: 'Tipo de alimento actualizado con éxito' }
        format.json { render :show, status: :ok, location: @alimento }
      else
        format.html { render :edit }
        format.json { render json: @alimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alimentos/1
  # DELETE /alimentos/1.json
  def destroy
    @alimento.destroy
    respond_to do |format|
      format.html { redirect_to alimentos_url, notice: 'Ha eliminado el tipo de alimento con éxito ' }
      format.json { head :no_content }
    end
  end

 def admin_only
    unless current_user.admin?
      redirect_to ficha_medicas_path, :alert => "No tienes acceso a esta área"
    end
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alimento
      @alimento = Alimento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alimento_params
      params.require(:alimento).permit(:nombre)
    end
end
