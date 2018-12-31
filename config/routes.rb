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

  # namespace :users do
  #   resources :sessions, only: [:create, :destroy]
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  apipie
  namespace :api do
    namespace :v1 do
      post "users/register"
      post "users/login"
      post "users/logout"
      post "users/forgot_password"
      post "users/resend_confirmation"
      post "users/update"
      post "users/update_password"
    end
  end

end
