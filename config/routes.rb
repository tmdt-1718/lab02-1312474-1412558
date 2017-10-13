Rails.application.routes.draw do
  devise_for :users
root 'welcome#index'

  get 'welcome/index'

get 'messages/inbox', to: 'messages#inbox'
get 'messages/sent', to: 'messages#sent'
get 'messages/show', to: 'messages#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # mailbox folder routes
  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash

  # conversations
  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end
end
