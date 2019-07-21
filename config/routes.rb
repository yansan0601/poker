Rails.application.routes.draw do
  root to: 'poker#index'

  resources :poker, only: [:index, :show, :new, :create, :destroy, :edit, :update]
end
