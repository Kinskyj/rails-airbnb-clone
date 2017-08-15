Rails.application.routes.draw do

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :services, only: [ :index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: [ :new, :create ]
    resources :comments, only: [ :create ]
  end

  resources :bookings, only: [] do
    resources :reviews, only: [:create]
  end

end
