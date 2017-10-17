Rails.application.routes.draw do
  devise_for :users
  resources :conversations do
    resources :messages
  end
root 'messages#inbox'

get 'messages/inbox', to: 'messages#inbox', as: :messages_inbox
get 'messages/sent', to: 'messages#sent', as: :messages_sent
get 'messages/show', to: 'messages#show', as: :messages_show
end
