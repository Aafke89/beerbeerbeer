Rails.application.routes.draw do
  root to: 'pages#home'

  resources :brewers, only: [:index, :show]

end
