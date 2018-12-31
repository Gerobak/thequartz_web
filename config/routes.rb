Rails.application.routes.draw do
  devise_for :users, :controllers => {
    registrations: 'users/registrations',
    confirmations: 'users/confirmations'
  }
  root 'posts#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'
  get 'new' => 'posts#new'

  resources :pages
  resources :posts

  namespace :users do
    resources :sessions, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
