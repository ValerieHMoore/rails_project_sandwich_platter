# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  resources :sandwich_fillings
  resources :fillings
  resources :sandwiches
  resources :users

  get '/grilled' => 'sandwiches#grilled'
  get '/open_faced' => 'sandwiches#open_faced'
  
  get '/signin' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

end