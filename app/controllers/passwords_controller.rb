class PasswordsController < ApplicationController
    before_action :require_user_logged_in! # This keeps the below stuff from happening if the user is not logged in. It's defined in application_controller.rb

    def edit 
    end

    def update
        if Current.user.update(password_params)
            redirect_to root_path, notice: "Password updated!"
        else 
            # redirect_to edit_password_path
            render :edit
        end

    end
    
    private 

    def password_params
        params.require(:user).permit(:password, :password_confirmation)
    end


end
