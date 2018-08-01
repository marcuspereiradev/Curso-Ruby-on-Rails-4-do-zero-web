Rails.application.routes.draw do
  resources :departamentos
  resources :produtos, only: [:new, :create, :destroy]
  get 'produtos/busca' => 'produtos#busca', as: :busca_produto
  root 'produtos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
