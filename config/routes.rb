Rails.application.routes.draw do
  # default
    devise_for :users
    root 'messages#inbox'
    get 'home', to: 'home#index'
    get 'friends', to: 'friends#index'
  # Quý
    get 'friends/index'
    get 'friends/addfriend'
    get 'friends/unfriend'











# Toàn
  resources :messages, only: [:create, :new, :inbox, :sent]
  get 'messages/index'
  get 'messages/inbox', to: 'messages#inbox'
  get 'messages/sent', to: 'messages#sent'
  get 'messages/show', to: 'messages#show'
  resources :messages do
    collection do
      get 'getmess'
    end
  end







  
end
