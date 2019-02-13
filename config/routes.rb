Rails.application.routes.draw do
  # resources :reviews
  # resources :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants, only: [ :index, :show, :new, :create] do
    resources :reviews #, only: [ :index, :show, :new, :create ]
  end

  # resources :reviews

end

