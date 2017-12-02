class EstadoConservacionesController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only

  before_action :set_estado_conservacion, only: [:show, :edit, :update, :destroy]

  # GET /estado_conservaciones
  # GET /estado_conservaciones.json
  def index
    @estado_conservaciones = EstadoConservacion.all
  end

  # GET /estado_conservaciones/1
  # GET /estado_conservaciones/1.json
  def show
  end

  # GET /estado_conservaciones/new
  def new
    @estado_conservacion = EstadoConservacion.new
  end

  # GET /estado_conservaciones/1/edit
  def edit
  end

  # POST /estado_conservaciones
  # POST /estado_conservaciones.json
  def create
    @estado_conservacion = EstadoConservacion.new(estado_conservacion_params)

    respond_to do |format|
      if @estado_conservacion.save
        format.html { redirect_to @estado_conservacion, notice: 'Estado conservacion was successfully created.' }
        format.json { render :show, status: :created, location: @estado_conservacion }
      else
        format.html { render :new }
        format.json { render json: @estado_conservacion.errors, status: :unprocessable_entity }
      end
    end
  end
  def admin_only
    unless current_user.admin?
      redirect_to ficha_medicas_path, :alert => "No tienes acceso a esta área"
    end
  end
  # PATCH/PUT /estado_conservaciones/1
  # PATCH/PUT /estado_conservaciones/1.json
  def update
    respond_to do |format|
      if @estado_conservacion.update(estado_conservacion_params)
        format.html { redirect_to @estado_conservacion, notice: 'Estado conservacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @estado_conservacion }
      else
        format.html { render :edit }
        format.json { render json: @estado_conservacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estado_conservaciones/1
  # DELETE /estado_conservaciones/1.json
  def destroy
    @estado_conservacion.destroy
    respond_to do |format|
      format.html { redirect_to estado_conservaciones_url, notice: 'Estado conservacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estado_conservacion
      @estado_conservacion = EstadoConservacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estado_conservacion_params
      params.require(:estado_conservacion).permit(:nombre)
    end
end
