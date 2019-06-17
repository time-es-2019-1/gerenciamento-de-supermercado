Rails.application.routes.draw do

  resources :produtos
  resources :enderecos
  resources :pessoas
  resources :clientes
  resources :funcionarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
