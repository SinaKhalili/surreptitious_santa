Rails.application.routes.draw do


  get 'randomizer/randomize'
  resources :profiles, only: [:edit, :update]
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "clearance/users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"

  get "/edit_profile" => "profiles#edit"
  get "/users" => "users#index"
  get "/users_admin" => "users#users_admin"

  get "/randomizer" => "randomizer#show"
  get "/randomize" => "randomizer#randomize"

  get '/users/:id', :to => 'users#show', :as => :user
  delete '/users/:id', :to => 'users#destroy'

  get "/my_account" => "users#my_account"
  get "/rules" => "static_pages#rules"

  root 'static_pages#home'

end
