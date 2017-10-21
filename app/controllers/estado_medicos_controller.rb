class EstadoMedicosController < ApplicationController
  before_action :set_estado_medico, only: [:show, :edit, :update, :destroy]

  # GET /estado_medicos
  # GET /estado_medicos.json
  def index
    @estado_medicos = EstadoMedico.all
  end

  # GET /estado_medicos/1
  # GET /estado_medicos/1.json
  def show
  end

  # GET /estado_medicos/new
  def new
    @estado_medico = EstadoMedico.new
  end

  # GET /estado_medicos/1/edit
  def edit
  end

  # POST /estado_medicos
  # POST /estado_medicos.json
  def create
    @estado_medico = EstadoMedico.new(estado_medico_params)

    respond_to do |format|
      if @estado_medico.save
        format.html { redirect_to @estado_medico, notice: 'Estado medico was successfully created.' }
        format.json { render :show, status: :created, location: @estado_medico }
      else
        format.html { render :new }
        format.json { render json: @estado_medico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estado_medicos/1
  # PATCH/PUT /estado_medicos/1.json
  def update
    respond_to do |format|
      if @estado_medico.update(estado_medico_params)
        format.html { redirect_to @estado_medico, notice: 'Estado medico was successfully updated.' }
        format.json { render :show, status: :ok, location: @estado_medico }
      else
        format.html { render :edit }
        format.json { render json: @estado_medico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estado_medicos/1
  # DELETE /estado_medicos/1.json
  def destroy
    @estado_medico.destroy
    respond_to do |format|
      format.html { redirect_to estado_medicos_url, notice: 'Estado medico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estado_medico
      @estado_medico = EstadoMedico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estado_medico_params
      params.require(:estado_medico).permit(:nombre)
    end
end
