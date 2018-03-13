Rails.application.routes.draw do
  resources :estacionados
  resources :clientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'estacionados#index'
end
