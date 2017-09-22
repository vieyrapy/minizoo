class InternadosController < ApplicationController
  before_action :set_internado, only: [:show, :edit, :update, :destroy]

  # GET /internados
  # GET /internados.json
  def index
    @internados = Internado.all
  end

  # GET /internados/1
  # GET /internados/1.json
  def show
  end

  # GET /internados/new
  def new
    @internado = Internado.new
  end

  # GET /internados/1/edit
  def edit
  end

  # POST /internados
  # POST /internados.json
  def create
    @internado = Internado.new(internado_params)

    respond_to do |format|
      if @internado.save
        format.html { redirect_to @internado, notice: 'Internado was successfully created.' }
        format.json { render :show, status: :created, location: @internado }
      else
        format.html { render :new }
        format.json { render json: @internado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /internados/1
  # PATCH/PUT /internados/1.json
  def update
    respond_to do |format|
      if @internado.update(internado_params)
        format.html { redirect_to @internado, notice: 'Internado was successfully updated.' }
        format.json { render :show, status: :ok, location: @internado }
      else
        format.html { render :edit }
        format.json { render json: @internado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /internados/1
  # DELETE /internados/1.json
  def destroy
    @internado.destroy
    respond_to do |format|
      format.html { redirect_to internados_url, notice: 'Internado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_internado
      @internado = Internado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def internado_params
      params.require(:internado).permit(:medicamento, :dosis, :fecha_inicio, :fecha_fin, :descripcion, :dar_alta, :ficha_medica_id)
    end
end
