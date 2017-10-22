Rails.application.routes.draw do
  get 'friends/index'

  get 'messages/index'
  get 'friends/addfriend'
  get 'friends/unfriend'  
  get 'home', to: 'home#index'
  get 'friends', to: 'friends#index'

  devise_for :users
  root to: 'messages#inbox'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'messages#inbox'

get 'messages/inbox', to: 'messages#inbox', as: :messages_inbox
get 'messages/sent', to: 'messages#sent', as: :messages_sent
get 'messages/show', to: 'messages#show', as: :messages_show
end
