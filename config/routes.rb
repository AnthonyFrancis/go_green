Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'

  namespace :api do 
    resources :albums 
    resources :users 
  end

  resources :albums 
  resources :users 

  root to: "albums#index"
  # get 'pages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
