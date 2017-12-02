class TareasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tarea, only: [:show, :edit, :update, :destroy]

  # GET /tareas
  # GET /tareas.json
  def index
    #@tareas = Tarea.all
    # A nivel local 
      
    if params[:terminado]
      @tareas = Tarea.where(:terminado => params[:terminado]).order(:fecha) 
    else 
      @tareas = Tarea.where(fecha: Date.today.all_day, :terminado => 'false').order(:fecha) 
    end
    # De acuerdo a nuestra zona horaria (fecha: Time.zone.now.midnight)
    #@tareas = Tarea.where(fecha: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day and tratamiento: true:)
  end


  # GET /tareas/1
  # GET /tareas/1.json
  def show
  end

  def daralta
    @tarea = Tarea.find(params[:id])
    if @tarea.update_attributes(:terminado => 'true')
      #mostrar mensaje de éxito
      msg = "El animal fue dado de alta"
      flash[:notice] =  msg
    else
      msg = "No se ha podido dar de alta "
      flash[:notice] =  msg
    end
    # Redireccionar
    redirect_to(:action => :index)
  end

  # GET /tareas/new
  def new
    @tarea = Tarea.new
  end

  # GET /tareas/1/edit
  def edit
  end

  # POST /tareas
  # POST /tareas.json
  def create
    @tarea = Tarea.new(tarea_params)

    respond_to do |format|
      if @tarea.save
        format.html { redirect_to @tarea, notice: 'Tarea was successfully created.' }
        format.json { render :show, status: :created, location: @tarea }
      else
        format.html { render :new }
        format.json { render json: @tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tareas/1
  # PATCH/PUT /tareas/1.json
  def update
    respond_to do |format|
      if @tarea.update(tarea_params)
        format.html { redirect_to @tarea, notice: 'Tarea was successfully updated.' }
        format.json { render :show, status: :ok, location: @tarea }
      else
        format.html { render :edit }
        format.json { render json: @tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tareas/1
  # DELETE /tareas/1.json
  def destroy
    @tarea.destroy
    respond_to do |format|
      format.html { redirect_to tareas_url, notice: 'Tarea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarea
      @tarea = Tarea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tarea_params
      params.require(:tarea).permit(:fecha, :terminado, :ficha_medica_id, :medicamento)
    end
end
