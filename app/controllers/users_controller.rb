class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only, :except => :show

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless current_user.admin?
      unless @user == current_user
        #redirect_to root_path, :alert => "Acceso denegado"
        redirect_to root_path, :alert => "Acceso denegado"
      end
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "Usuario actualizado"
    else
      redirect_to users_path, :alert => "No se pudo actualizar el usuario"
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path, :notice => "Usuario destruido"
  end

  private

  def admin_only
    unless current_user.admin?
      redirect_to ficha_medicas_path, :alert => "No tienes permiso para acceder a esta área, póngase en contacto con su administrador"
    end
  end

  def secure_params
    params.require(:user).permit(:role)
  end

end
