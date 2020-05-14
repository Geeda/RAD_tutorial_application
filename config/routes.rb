Rails.application.routes.draw do
  root 'static_pages#home'
  get '/test' => 'static_pages#test'
  get 'sessions/new'
  get 'users/new'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get 'hello/index'
  get 'hello' => 'hello#index'
  get '/signup' => 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
