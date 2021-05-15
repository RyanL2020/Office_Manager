Rails.application.routes.draw do
  
  
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

  #get 'auth/github', as: 'github_login'
  #get '/auth/:provider/callback', to: "sessions#update"
end
