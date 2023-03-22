class RegistrationsController < ApplicationController 
    def new
        # The @ symbol below makes user into an instance variable instead of a normal local variable, so it will have global scope within the view
        @user = User.new
    end

    def create
        # params is the data output from the form and URL
        # params is a method defined in the controller class that all controllers inherit from, so we're inheriting params method from parent
        @user = User.new(user_params) # Creating a new user via the User class and passing in user_params as the arguments for the new user constructor
        if @user.save # Returns true if user was successfully saved to database
            session[:user_id] = @user.id # Here we are creating the user_id key and value in the session object
            redirect_to root_path, notice: "Successfully created account!"
        else
            render :new # If something went wrong just re-render the new page in views/registrations/new.html.erb
        end

    end

    private # private is keyword meaning all subsequent (below) methods are private

    def user_params 
        params.require(:user).permit(:email, :password, :password_confirmation) # require requires that the user key exists and throws an error otherwise. permit returns a new hash that contains only the specified key/values
    end
end
