Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :travels do
    resources :bookings, only: [:create, :index]
  end

end


