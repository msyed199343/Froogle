class UsersController < ApplicationController

    def index
        
        render :home
    end

    def show
        render :about
    end

    def create 
        #if user exists show them to this page 
        #render :login
        #else if they dont exist show them to the sign up page below
        #if user is logged in buttun should say sign out (send to destroy to destory session)
    end

    def new
        render :sign_up
    end

    def destroy
        #ends current session
    end
end