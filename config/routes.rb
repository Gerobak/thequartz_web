Rails.application.routes.draw do
  devise_for :users
  root 'posts#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'
  get 'new' => 'posts#new'

  resources :pages
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
