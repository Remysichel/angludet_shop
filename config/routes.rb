Rails.application.routes.draw do
  devise_for :users

  root 'wines#index'
  resources :wines, only: [:index, :show]
end
