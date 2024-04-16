class PasswordResetController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(reset_password_params)

        if @user.present?
            # send email
            PasswordMailer.with(user: @user).reset.deliver_later
        else
        end
        redirect_to root_path, notice: "If an account with that mail was found, we have sent a link to reset your password"
    end

    private
    def reset_password_params
        params.require(:email).permit(:email)
    end
end