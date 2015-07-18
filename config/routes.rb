Rails.application.routes.draw do
  # resources :orders
  devise_for :users
  resources :listings do 
    resources :orders, only: [:new, :create]
  end

  get 'pages/about'

  get 'pages/contact'
  get 'seller' => "listings#seller"
  get 'sales' => "order#sales"
  get 'purchases' => "orders#purchases"

  root 'listings#index'
end
