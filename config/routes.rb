Rails.application.routes.draw do
  resources :galleries


  devise_for :users, :controllers => { :sessions => "sessions" }
  root 'posts#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'
  get 'new' => 'posts#new'


  resources :pages
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'download/download'
end
