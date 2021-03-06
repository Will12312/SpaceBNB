Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :travels do
    resources :bookings, only:[:new, :create, :show]
  end
  resources :bookings, only:[:destroy, :index]
end


