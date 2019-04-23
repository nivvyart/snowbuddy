# == Route Map
#
# Prefix Verb URI Pattern Controller#Action
#   root GET  /           pages#home

Rails.application.routes.draw do
  get 'users/new'
  root :to => 'pages#home'
  resources :resorts
  get '/about' => 'pages#about'

  get '/resorts/:id' => 'resorts#show', :as => 'resort_id'


end
