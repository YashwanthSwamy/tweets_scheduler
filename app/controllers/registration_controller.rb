class RegistrationController < ApplicationController
    def new
        # @ -> instance variable can be reused outside the function
        # local varaibles are garbage collected
        @user = User.new
    end
    
    def create
        # user {"email"=>"yashwanth.swamy@colorado.edu", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path, notice: "successfully created account"
        else
            render :new
        end
    end

    private
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end