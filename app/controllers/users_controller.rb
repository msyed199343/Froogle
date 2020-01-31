class UsersController < ApplicationController
    # skip_before_action :verify_authenticity_token
    # helper_method :login_page
    def new
        # registration of new user 
        @user = User.new
        render :new 
    end



    def create 
    #     if user exists show raise error 
    #     if not save them to db login and send em to home page
        @user = User.new(user_params)

        if @user.save
           login_user!(@user)
            redirect_to store_items_url
            
        else
            flash.now[:errors] =  @user.errors.full_messages
            render :new
        end
    
          
    end

    
   

    private
    def user_params
        params.require(:user).permit(:username, :password)
    end
end