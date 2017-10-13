Rails.application.routes.draw do


get 'messages/inbox', to: 'messages#inbox'
get 'messages/sent', to: 'messages#sent'
get 'messages/show', to: 'messages#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
