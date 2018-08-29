Rails.application.routes.draw do
  get 'pages/home'
  root :to => 'session#new'
  resources :users
  resources :comments
  resources :posts
  resources :categories

  get '/login' => 'session#new' #login form
  post '/login' => 'session#create' #perform a login
  delete '/login' => 'session#destroy'

  
  post '/chat' => 'pages#chat'

end
