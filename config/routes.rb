Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  #Login Routes
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  #Logout Route
  get '/logout' => 'sessions#destroy'

  #Signup Routes
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  #Main Results route
  get '/show' => 'main#show'

  #Root Route
  root 'main#index'

end
