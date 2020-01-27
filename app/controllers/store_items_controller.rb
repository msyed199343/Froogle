class StoreItemsController < ApplicationController

    def index
        @items = StoreItem.all 
        render :store_home
    end


end
