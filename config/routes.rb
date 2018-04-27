Rails.application.routes.draw do

  root "restaurants#index"
  get '/your-reservations' => 'reservations#index', as: :your_reservations
  get '/my_restaurants' => 'restaurants#my_restaurants', as: :my_restaurants
  resources :restaurants do
    resources :reviews, only: [:create, :edit, :destroy, :new, :update]

    resources :reservations, only: [:create, :edit, :destroy, :new, :update]

  end


  resource :user, only:[:new, :create]
  resource :session, only:[:new, :create, :destroy]

end
