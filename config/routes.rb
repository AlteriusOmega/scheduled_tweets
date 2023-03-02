Rails.application.routes.draw do
    # GET /about goes to about controller with index action
    get "about", to:"about#index"

    # get "/", to: "main#index" # This does the same thing as below
    root to: "main#index"

end