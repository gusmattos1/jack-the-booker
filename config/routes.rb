Rails.application.routes.draw do

  root "restaurants#index"

  resources :restaurants do
    resources :reviews, only: [:create, :edit, :destroy, :new, :update]
  end
  
  resources :reservation, only: [:create, :edit, :destroy, :new, :update]
  resource :user, only:[:new, :create]
  resource :session, only:[:new, :create, :destroy]

end
