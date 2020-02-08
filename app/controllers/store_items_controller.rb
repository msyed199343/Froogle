 
class StoreItemsController < ApplicationController
    before_action :require_login
    helper_method :store_front, :about
    
    def index
        # @items = StoreItem.all 
        render :home2
    end

    def show
       
      
            @store_item = StoreItem.find_by(name: params[:name])


                
            if @store_item
                    @response = response
                        render :"#{@store_item[:name]}"  

             else
                            
                redirect_to "/store_items/store_front/"
            end
    end

    
    def store_front
        render :store_home
    end

    def about
        render :about
    end

  
end
