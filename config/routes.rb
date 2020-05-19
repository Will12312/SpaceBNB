Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #Destroy a travel
  delete "travels/:id", to: "travels#destroy"
  #resources :travels, only: [ :destroy ]

end
