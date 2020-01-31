class SessionsController < ApplicationController

    #create a new session (login) 
    #New (login page)
    #destroy a session so sign out and go back to home page 


  

    def create
        password = params[:password]
        username = params[:username]
        @user = User.find_by_credentials(username, password) 

        if @user.nil?
            flash.now[:errors] = ["Sorry, that seems to be incorrect.  
            Try again.  If you dont have an account, create one by clicking 
            'Sign Up' above."]
            
            render :new
        else
            login_user!(@user)
            redirect_to store_items_url
        end
    end

    def destroy
        logout_user!
        redirect_to new_session_url
    end

      def new 
        render :new
    end

    
end