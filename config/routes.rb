Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#welcome'

  get '/welcome' => 'application#welcome'
  get '/login' => 'sessions#new'
  get '/secret' => 'secrets#show'
  post '/login' => 'sessions#create'
  post '/destroy' => 'sessions#destroy'
  
end
