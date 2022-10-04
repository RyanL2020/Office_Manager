Rails.application.routes.draw do
  root 'pages#home'
  
  resources :users do
    resources :employees
    resources :offices
  end 

  resources :employees do
   resources :offices
  end 

  resources :employees
  resources :offices

  get '/search' => 'offices#search', :as => 'search_office'

  get 'login', to: "sessions#new"

  post 'login', to: "sessions#create"

  get 'logout', to: "sessions#new"

  delete 'logout', to: "sessions#destroy"

  get '/auth/google_oauth2/callback', to: "sessions#omniauth"

  #get 'auth/github', as: 'github_login'
  #get '/auth/:provider/callback', to: "sessions#update"
end
