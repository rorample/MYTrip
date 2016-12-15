Rails.application.routes.draw do
  
  get 'users/new'

  get 'sessions/new'

  get 'welcome/index'

=begin
  resources :articles do
    resources :comments
  end
=end
  
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  resources :welcome
  resources :myjourney
#  resources :trips

  resources :trips do
    resources :ovrspds
  end
    
  namespace :api do
    namespace :v1 do
=begin
      resources :users, only: [:index, :create, :show, :update, :destroy]
      resources :microposts, only: [:index, :create, :show, :update, :destroy]
=end
    end
  end
  
  root :controller=> "sessions", :action=> "new"
  
end
