Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'posts#index'

  get 'luthiers' => 'pages#luthiers'
  get 'contacto' => 'pages#contacto'
  get 'about' => 'pages#about'

  resources :posts

end
