class ApplicationController < ActionController::Base
    # This is where all of our controllers inherit from, so these methods are basically global
    before_action :set_current_user # This will be the first thing that happens when you make a request with the Rails app i.e. whenever you try to do any action

    def set_current_user
        if session[:user_id] # If there is user_id in the session object cookie
            Current.user = User.find_by(id: session[:user_id]) # Returns us the number for the user. find_by is like find but does not throw an error if the user gets deleted mid session. Session is created and managed by ActionDispatch::Session middleware which is included by default in Rails apps and is configured in config/application.rb
        end
    end

    def require_user_logged_in!
        redirect_to sign_in_path, alert: "You must be signed in to do that" if Current.user.nil?
    end


end