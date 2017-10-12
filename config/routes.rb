Rails.application.routes.draw do
  get 'messages/index'
get 'messages/inbox', to: 'messages#inbox'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
