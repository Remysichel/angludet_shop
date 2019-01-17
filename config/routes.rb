Rails.application.routes.draw do
  devise_for :users

  root 'wines#index'
  resources :wines, only: [:index, :show]
  resources :orders, only: [:index, :show, :create] do
    resources :payments, only: [:new, :create]
  end
end
