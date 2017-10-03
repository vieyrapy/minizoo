Rails.application.routes.draw do
  resources :tareas
  resources :ficha_medicas
  resources :animales
  resources :cites
  resources :estado_conservaciones
  resources :alimentos
  resources :articulos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get 'website/index'
	root 'website#index'
end
