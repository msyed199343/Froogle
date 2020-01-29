class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        # @search = SearchTable.new 
        render :home
    end

    def show
        render :about
    end

    # def create 
    #     #if user exists show them to this page 
    #     #render :login
    #     #else if they dont exist show them to the sign up page below
    #     #if user is logged in buttun should say sign out (send to destroy to destory session)
        
    # end

    #  def show
    #         @store_item = User.find_by(id: params[:search].to_i)

    #         if @store_item
    #             render :FS5
    #         else

    #            redirect_to users_url
               
    #         end
    # end

    def new
        render :sign_up
    end

    def destroy
        #ends current session
    end
end