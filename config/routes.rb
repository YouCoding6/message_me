Rails.application.routes.draw do
  root 'chatrooms#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'message', to: 'messages#create'
  # get 'signup', to: 'session#new'
  post 'signup', to: 'sessions#signup'
  mount ActionCable.server, at: '/cable'
end
