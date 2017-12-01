class CuarentenaController < ApplicationController
  before_action :set_ficha_medica, only: [:show, :edit, :update, :destroy]

  def index
   @ficha_medicas = FichaMedica.where(alta_cuarentena: :false).rewhere(internacion: :true)

  end

 def daralta
    #@ficha_medica = FichaMedica.find(params[:id])
    if @ficha_medica.update_attributes(:alta_cuarentena => 'true')
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
end
 

