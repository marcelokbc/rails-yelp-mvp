Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews
  end
  delete "restaurants/:id", to: "restaurants#destroy", as: :destroy_restaurant
end
