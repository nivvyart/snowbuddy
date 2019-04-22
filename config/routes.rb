# == Route Map
#
# Prefix Verb URI Pattern Controller#Action
#   root GET  /           pages#home

Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :resorts

end
