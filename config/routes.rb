Rails.application.routes.draw do
  root 'home#index'
  get '/show/:id' => 'home#show', as: "show_user"
  resources :posts
  resources :profiles
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
