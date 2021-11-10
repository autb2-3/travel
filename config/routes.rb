Rails.application.routes.draw do
  get 'room/show'
  post 'room/create'
  get 'room/posts'
  get 'room/search_room'
  get 'room/search'
  
 post 'reserve/confirm'
 post 'reserve/comprete'
 post 'reserve/back' 
 get 'reserve/reserved'
 get 'search' => 'room#search'
 
 get 'room/show'
 
 devise_for :users, controllers: { registrations: 'users/registrations' }
  get '/',to:'room#index'
  get 'reserve/room'
  get 'reserve/comprete'
  get 'reserve/confirm'
  get 'reserve/room'
  
 devise_scope :users do
  post'update_profile',to:'users/registrations#update_profile'
  patch 'update_profile',to:'users/registrations#update_profile'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :reserve
  resources :room
  resources :users
end