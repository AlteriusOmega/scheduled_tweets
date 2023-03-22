class MainController < ApplicationController
    def index
        # if session[:user_id] # If there is user_id in the session object cookie
        #     @user = User.find_by(id: session[:user_id]) # Returns us the number for the user. find_by is like find but does not throw an error if the user gets deleted mid session. Session is created and managed by ActionDispatch::Session middleware which is included by default in Rails apps and is configured in config/application.rb
        # # flash.now[:notice] = "Logged in successfully"
        # # flash.now[:alert] = "Invalid email or password"
        # end
        
    end
end
