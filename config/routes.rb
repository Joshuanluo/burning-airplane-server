Rails.application.routes.draw do
  resources :reservations
  resources :users
  resources :flights
  resources :airplanes

  root :to => 'pages#home'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
