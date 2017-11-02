class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.where(start: params[:start]..params[:end])
  end

  def show
  end

  def new
    @event = Event.new
  end

  def edit
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      msg = "El evento fue creado con exito"
      flash[:notice] =  msg
    else
      msg = "No se ha podido crear el evento "
      flash[:notice] =  msg
    end
    # Redireccionar
    redirect_to(:action => :index)

  end

  def update
    
    if @event.update(event_params)
      msg = "El evento fue actualizado con exito"
      flash[:notice] =  msg
    else
      msg = "No se ha podido actualizar el evento "
      flash[:notice] =  msg
    end
    # Redireccionar
    redirect_to(:action => :index)
  end

  def destroy
    
     if @event.destroy
      msg = "El evento fue eliminado "
      flash[:notice] =  msg
    else
      msg = "No se ha podido eliminar el evento "
      flash[:notice] =  msg
    end
    # Redireccionar
    redirect_to(:action => :index)
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:title, :date_range, :start, :end, :color)
    end
end
