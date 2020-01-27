class UsersController < ApplicationController

    def index
        
        render :home
    end

    def show
        render :about
    end
end