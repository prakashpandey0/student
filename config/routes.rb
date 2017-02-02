Rails.application.routes.draw do
  

  get 'users/new'
  get  '/signup',  to: 'users#new'
  post  '/signup',  to: 'users#create'

  get 'students/new'
  get '/students', to: 'students#index'
  get '/students', to: 'students#new'
  post '/students', to: 'students#create'

  get 'pages/dashboard'
  get '/dashboard', to:'pages#dashboard'

  #get 'pages/student'
  #get '/student', to: 'pages#student'

  get 'pages/factulities'
  get 'pages/myschedule'

  
  get 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :factualities
  resources :students
  resources :users	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root 'pages#home'
end
