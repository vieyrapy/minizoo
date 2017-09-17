Rails.application.routes.draw do
  resources :animales
  resources :cites
  resources :estado_conservaciones
  resources :alimentos
  resources :especies
  resources :articulos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get 'website/index'
	root 'website#index'
end
