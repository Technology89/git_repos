Rails.application.routes.draw do
  
  
  root "movies#index"
  
  get 'signup' => 'users#new'
  get 'signin' => 'sessions#new'

  resource :session
  resources :users

  resources :movies do
    resources :reviews
    resources :favorites
   

  end
end
