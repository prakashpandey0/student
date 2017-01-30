Rails.application.routes.draw do
  get 'users/new'

  get 'pages/dashboard'
  get '/dashboard', to:'pages#dashboard'

  get 'pages/student'
  get '/student', to: 'pages#student'

  get 'pages/factulities'
  

  get 'pages/myschedule'

  get  '/signup',  to: 'users#new'
  post  '/signup',  to: 'users#create'

  resources :factualities
  resources :students
  resources :users	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root 'pages#home'
end
