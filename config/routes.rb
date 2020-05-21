Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :travels do
    collection do
      get :latest
    end
    resources :bookings, only:[:new, :create, :show]
  end
  resources :bookings, only:[:destroy, :index]
end


