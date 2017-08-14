Rails.application.routes.draw do
  get 'reviews/create'

  get 'bookings/new'

  get 'bookings/create'

  get 'services/index'

  get 'services/show'

  get 'services/new'

  get 'services/create'

  get 'services/edit'

  get 'services/update'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
