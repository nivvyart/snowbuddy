# == Route Map
#
#      Prefix Verb   URI Pattern                 Controller#Action
#        root GET    /                           pages#home
#     resorts GET    /resorts(.:format)          resorts#index
#             POST   /resorts(.:format)          resorts#create
#  new_resort GET    /resorts/new(.:format)      resorts#new
# edit_resort GET    /resorts/:id/edit(.:format) resorts#edit
#      resort GET    /resorts/:id(.:format)      resorts#show
#             PATCH  /resorts/:id(.:format)      resorts#update
#             PUT    /resorts/:id(.:format)      resorts#update
#             DELETE /resorts/:id(.:format)      resorts#destroy
#       users GET    /users(.:format)            users#index
#             POST   /users(.:format)            users#create
#    new_user GET    /users/new(.:format)        users#new
#   edit_user GET    /users/:id/edit(.:format)   users#edit
#        user GET    /users/:id(.:format)        users#show
#             PATCH  /users/:id(.:format)        users#update
#             PUT    /users/:id(.:format)        users#update
#             DELETE /users/:id(.:format)        users#destroy
#       about GET    /about(.:format)            pages#about
#   resort_id GET    /resorts/:id(.:format)      resorts#show

Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :resorts
  resources :users
  get '/signup' => 'users#new'
  get '/about' => 'pages#about'
  get '/resorts/:id' => 'resorts#show', :as => 'resort_id'


end
