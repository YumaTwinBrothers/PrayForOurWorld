Rails.application.routes.draw do
  root "pages#home"
  get 'pages/home', to: 'pages#home'

  resources :blogs do
    resources :comments, only: [:create]
    member do
      post 'like'
    end
  end

  get '/signup', to: 'users#new'
  resources :users, except: [:new]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  mount ActionCable.server => '/cable'
  get '/chat', to: 'chatrooms#show'

  resources :messages, only: [:create]
end
