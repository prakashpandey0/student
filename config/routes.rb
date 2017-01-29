Rails.application.routes.draw do
  get 'users/new'

  get 'pages/dashboard'
  get '/dashboard', to:'pages#dashboard'

  get 'pages/student'
  get '/student', to: 'pages#student'

  get 'pages/factulities'
  

  get 'pages/myschedule'

  get  '/signup',  to: 'users#new'

  resources :factualities
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root 'pages#home'
end
