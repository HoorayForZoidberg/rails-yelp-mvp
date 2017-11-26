Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [ :index, :new, :create, :show ] do
    resources :reviews, only: [ :new, :create ]
  end

  resources :reviews, only: [ :show, :edit, :update, :destroy ]

  root to: "restaurants#index"

end
