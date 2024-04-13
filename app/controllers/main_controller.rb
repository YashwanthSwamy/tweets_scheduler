class MainController < ApplicationController
    def index
        flash.now[:notice]  = "Logged in succesfully"
        flash.now[:alert]  = "Invalid mail or password"
    end
end