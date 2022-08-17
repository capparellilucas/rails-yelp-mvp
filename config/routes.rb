Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, only: [:index, :create, :new, :show] do
    # member do
      resources :reviews, only: [:index, :create, :new]
    # end
  end

end


# Prefix  Verb    URI Pattern            Controller#Action
# restaurants  GET     /restaurants           restaurants#index
#              POST    /restaurants           restaurants#create
# new_restaurant  GET     /restaurants/new       restaurants#new
# edit_restaurant  GET     /restaurants/:id/edit  restaurants#edit
#  restaurant  GET     /restaurants/:id       restaurants#show
#              PATCH   /restaurants/:id       restaurants#update
#              DELETE  /restaurants/:id       restaurants#destroy
