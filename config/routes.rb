Rails.application.routes.draw do
root 'messages#inbox'

get 'messages/inbox', to: 'messages#inbox', as: :messages_inbox
get 'messages/sent', to: 'messages#sent', as: :messages_sent
get 'messages/show', to: 'messages#show', as: :messages_show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
