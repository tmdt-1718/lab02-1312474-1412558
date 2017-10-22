Rails.application.routes.draw do
  resources :messages, only: [:create, :new, :inbox, :sent]
  devise_for :users
  root 'messages#inbox'
  get 'home', to: 'home#index'
  get 'friends', to: 'friends#index'
  get 'messages/inbox', to: 'messages#inbox'
  get 'messages/sent', to: 'messages#sent'
  get 'messages/show', to: 'messages#show'


  resources :messages do
    collection do
      get 'getmess'
    end
end
end
