Rails.application.routes.draw do
  resources :recipes, only: %i[index create]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy' 
  get '/me', to: 'users#show'
end
