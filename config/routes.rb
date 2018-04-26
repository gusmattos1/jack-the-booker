Rails.application.routes.draw do

  root "restaurants#index"
  get '/your-reservations' => 'reservations#index', as: :your_reservations
  resources :restaurants do
    resources :reviews, only: [:create, :edit, :destroy, :new, :update]
    resources :reservations, only: [:create, :edit, :destroy, :new, :update]
  end


  resource :user, only:[:new, :create]
  resource :session, only:[:new, :create, :destroy]

end
