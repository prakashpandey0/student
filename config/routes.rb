Rails.application.routes.draw do
  

  resources :events
  resources :my_schedules
  get 'users/new'
  get  '/signup',  to: 'users#new'
  post  '/signup',  to: 'users#create'

  get 'events/new'
  get '/events', to: 'events#new'

  get 'students/new'
  get '/students', to: 'students#index'
  #get '/students', to: 'students#new'
  #post '/students', to: 'students#create'

  get 'pages/dashboard'
  get '/dashboard', to:'pages#dashboard'

  #get 'pages/student'
  #get '/student', to: 'pages#student'

  #get 'pages/factulities'
  get 'factualities/new'
  get '/factualities', to: 'factualities#index'


  #get 'pages/myschedule'
  get 'my_schedules/new'
  get '/my_schedules', to: 'my_schedules#index'

  
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
