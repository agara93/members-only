Rails.application.routes.draw do
  root 'posts#index'
  get   'signin'    => 'sessions#new'
  post  'signin'    => 'sessions#create'
  
  resources :posts,     only: [:new, :create, :index]
  match '/signin' , to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'

end
