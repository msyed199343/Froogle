 
class StoreItemsController < ApplicationController
    before_action :require_login
    helper_method :store_front, :about, :random
    
    def index
        #@items = StoreItem.all 
        render :home2
    end

    def show

            corrected_word = spell_check(params[:name]) 
            @store_item = StoreItem.find_by(name: corrected_word)

            

                
            if @store_item

                render :"#{@store_item[:name]}"  
                  
            else
                    
                redirect_to "/store_items/store_front/"
                
            end
    end

    def spell_check(word)
        
            split = word.split("")
            split.delete(" ")
            count = 0
            bundled_letters = ""
            
            split.each do |letter|
                bundled_letters += letter 
                if bundled_letters.length == 3 || word.length < 3
                    bl = bundled_letters.capitalize
                    @item = StoreItem.select("name").where(" name LIKE ?", "%" + "#{bl}" + "%") 
                end
            end
            
        @item 
    end

    def random 
        @all = StoreItem.all 
        render :"#{@all.sample.name}"
    end


    def store_front
        render :store_home
    end

    def about
        render :about
    end

  
end
