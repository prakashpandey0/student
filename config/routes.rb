Rails.application.routes.draw do
  get 'pages/dashboard'

  get 'pages/student'

  get 'pages/factulities'

  get 'pages/myschedule'

  resources :factualities
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root 'students#index'
end
