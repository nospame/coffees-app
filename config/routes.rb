Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/coffees" => "coffees#index"
  get "/coffees/new" => "coffees#new"
  get "/coffees/:id" => "coffees#show"
  post "/coffees" => "coffees#create"
end
