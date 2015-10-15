Rails.application.routes.draw do
  resources :users do
    resources :books, only: [:create, :destroy]
  end

  root 'users#index'
end
