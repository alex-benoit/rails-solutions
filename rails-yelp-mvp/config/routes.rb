Rails.application.routes.draw do
    # get "restaurants/:category", to: "restaurants#category"
  resources :restaurants, only: [:index, :new, :show, :create] do
    resources :reviews, only: [:create]
  end
end
