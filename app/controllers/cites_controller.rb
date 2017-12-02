class CitesController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only

  before_action :set_cite, only: [:show, :edit, :update, :destroy]

  # GET /cites
  # GET /cites.json
  def index
    @cites = Cite.all
  end

  # GET /cites/1
  # GET /cites/1.json
  def show
  end

  # GET /cites/new
  def new
    @cite = Cite.new
  end

  # GET /cites/1/edit
  def edit
  end
def admin_only
    unless current_user.admin?
      redirect_to ficha_medicas_path, :alert => "No tienes acceso a esta área"
    end
  end
  # POST /cites
  # POST /cites.json
  def create
    @cite = Cite.new(cite_params)

    respond_to do |format|
      if @cite.save
        format.html { redirect_to @cite, notice: 'Nuevo cites creado con éxito' }
        format.json { render :show, status: :created, location: @cite }
      else
        format.html { render :new }
        format.json { render json: @cite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cites/1
  # PATCH/PUT /cites/1.json
  def update
    respond_to do |format|
      if @cite.update(cite_params)
        format.html { redirect_to @cite, notice: 'Cite actualizados con éxito' }
        format.json { render :show, status: :ok, location: @cite }
      else
        format.html { render :edit }
        format.json { render json: @cite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cites/1
  # DELETE /cites/1.json
  def destroy
    @cite.destroy
    respond_to do |format|
      format.html { redirect_to cites_url, notice: 'Cite se ha eliminado con éxito' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cite
      @cite = Cite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cite_params
      params.require(:cite).permit(:nombre)
    end
end
