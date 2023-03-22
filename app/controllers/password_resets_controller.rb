class PasswordResetsController < ApplicationController
    def new 
    end

    def create 
        @user = User.find_by(email: params[:email])

        if @user.present?
            
            # TODO Send email
            # Go to password mailer, semd the reset email with (using) parameters of user, and deliver later so it's done in background
            PasswordMailer.with(user: @user).reset.deliver_now
        else
        end

        redirect_to root_path, notice: "If an account with that email was found, we have sent a link to reset your password"

    end
end