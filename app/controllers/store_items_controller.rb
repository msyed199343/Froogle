class StoreItemsController < ApplicationController
    helper_method :store_front
    def index
        # @items = StoreItem.all 
        render :home2
    end

    def show
            @store_item = StoreItem.find_by(name: params[:name])
            if @store_item

                    render :"#{@store_item[:name]}"  
             else
              store_front
            end
    end

    
    def store_front
        render :store_home
    end

    
  
end
