Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index]
  resources :cookings


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  #
  # get '/cookings' => 'cookings#index', :as => 'cooking_index'
  #
  # post '/cookings' => 'cookings#create'
  #
  # get '/cookings/new' => 'cookings#new'
  #
  # get '/cookings/:id' => 'cookings#show'
  #
  # get '/cookings/:id/edit' => 'cookings#edit', :as => 'edit_cooking'
  #
  # post '/cookings/:id' => 'cookings#update'
  #
  # delete '/cookings/:id' => 'cookings#destroy'
end
