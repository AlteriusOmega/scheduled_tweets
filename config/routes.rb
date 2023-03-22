Rails.application.routes.draw do
    # GET /about goes to about controller with index action
    get "about", to:"about#index"
    
    get "password", to: "passwords#edit", as: :edit_password
    patch "password", to: "passwords#update"

    # when people go to the sign_up url, it will take them to the registrations controller with the action being new
    get "sign_up", to: "registrations#new"
    post "sign_up", to: "registrations#create"

    get "sign_in", to: "sessions#new"
    post "sign_in", to: "sessions#create"

    delete "logout", to: "sessions#destroy"

    get "password/reset", to: "password_resets#new"
    post "password/reset", to: "password_resets#create"

    get "password/reset/edit", to: "password_resets#edit"
    patch "password/reset/edit", to: "password_resets#update"


    # get "/", to: "main#index" # This does the same thing as below
    root to: "main#index"

    # user registration
    get "sign_up", to: "registrations#new"

end