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

  #Proximity Results
  get '/meal' => 'meal#show'
  get '/shelter' => 'shelter#show'

  #Expanded Results
  get '/expanded/meal/:id' => 'expanded#show_meal'
  get '/expanded/shelter/:id' => 'expanded#show_shelter'

  #Root Route
  root 'main#index'

  #Mailers Routes
  get  'reset'       => 'passwords#new'
  post 'reset'       => 'passwords#create'
  get  'newpassword' => 'passwords#create_new'
  post 'newpassword' => 'passwords#update'

  #Add service form route
  post 'profile' => 'profile#new'

end