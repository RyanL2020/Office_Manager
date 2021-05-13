Rails.application.routes.draw do
  get 'new/create'
  get 'new/login'
  get 'new/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :employees
    resources :offices
  end 

  resources :employees do
  resources :offices
  end 

  resources :employees
  resources :offices

  get 'login', to: "sessions#new"

  post 'login', to: "sessions#create"

  delete 'logout', to: "sessions#destroy"

end
