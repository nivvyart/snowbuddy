# == Route Map
#
#       Prefix Verb   URI Pattern                 Controller#Action
# sessions_new GET    /sessions/new(.:format)     sessions#new
#         root GET    /                           pages#home
#        about GET    /about(.:format)            pages#about
#      resorts GET    /resorts(.:format)          resorts#index
#              POST   /resorts(.:format)          resorts#create
#   new_resort GET    /resorts/new(.:format)      resorts#new
#  edit_resort GET    /resorts/:id/edit(.:format) resorts#edit
#       resort GET    /resorts/:id(.:format)      resorts#show
#              PATCH  /resorts/:id(.:format)      resorts#update
#              PUT    /resorts/:id(.:format)      resorts#update
#              DELETE /resorts/:id(.:format)      resorts#destroy
#    resort_id GET    /resorts/:id(.:format)      resorts#show
#        users GET    /users(.:format)            users#index
#              POST   /users(.:format)            users#create
#     new_user GET    /users/new(.:format)        users#new
#    edit_user GET    /users/:id/edit(.:format)   users#edit
#         user GET    /users/:id(.:format)        users#show
#              PATCH  /users/:id(.:format)        users#update
#              PUT    /users/:id(.:format)        users#update
#              DELETE /users/:id(.:format)        users#destroy
#       signup GET    /signup(.:format)           users#new
#              POST   /signup(.:format)           users#create
#      account GET    /account(.:format)          users#show
#        login GET    /login(.:format)            sessions#new
#              POST   /login(.:format)            sessions#create
#       logout DELETE /logout(.:format)           sessions#destroy

Rails.application.routes.draw do
  get 'sessions/new'
  root :to => 'pages#home'
  get :search, controller: :main
  get '/about' => 'pages#about'

  #resorts
  resources :resorts
  get '/resorts/:id' => 'resorts#show', :as => 'resort_id'

  #users
  resources :users # :except or :only => [:new, :xxx]
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/account' => 'users#edit'

  #session control
  get    '/login' => 'sessions#new'
  post   '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  #Messages
  resources :messages

end
