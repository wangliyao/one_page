Rails.application.routes.draw do
  get 'home/index'
  get 'home/new'
  post 'sessions/create'
  get 'sessions/destroy'
  get 'users/new_page'
  post 'users/create_page'
  resource :users
  resource :sessions ,:except=>[:create,:delete]
  root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
