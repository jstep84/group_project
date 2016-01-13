Rails.application.routes.draw do
  get 'profile/new'

  get 'profile/create'

  get 'static_pages/about'

  get 'static_pages/resources'

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

  #Search routes
  get '/search/:id' => 'search#show'
  get '/search' => 'search#find'

  get '/results' => 'search#results'

  #Root Route
  root 'main#index'

end