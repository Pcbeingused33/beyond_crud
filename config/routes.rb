Rails.application.routes.draw do
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
    collection do
      get :top
      # get "top", to: "restaurants#top", as: :top_restaurants
    end

    member do
      get :chef
    end
  end

  resources :reviews, only [:show, :edit, :update, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
