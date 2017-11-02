Rails.application.routes.draw do
  resources :events
  resources :especies
  resources :estado_medicos
  
  resources :tareas do
    member do
       put 'daralta'
       get 'index'
    end
  end

  #resources :ficha_medicas
  resources :animales
  get 'animales/historial'
  resources :cites
  resources :estado_conservaciones
  resources :alimentos
  resources :articulos

  get 'cuarentena/index'
  


  resources :ficha_medicas  do
    member do
      put 'daraltacuarentena'
      #delete 'eliminar'
      #put 'actualizar'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get 'website/index'
	root 'website#index'
end
