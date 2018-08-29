Rails.application.routes.draw do
  root :to => 'session#new'
  resources :users
  resources :comments
  resources :posts
  resources :categories

  get '/login' => 'session#new' #login form
  post '/login' => 'session#create' #perform a login
  delete '/login' => 'session#destroy'

end
