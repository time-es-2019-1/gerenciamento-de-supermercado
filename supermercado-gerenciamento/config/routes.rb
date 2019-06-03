Rails.application.routes.draw do
  resources :item_estoques
  resources :models
  resources :produtos
  resources :categoria
  resources :clientes
  resources :funcionarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
