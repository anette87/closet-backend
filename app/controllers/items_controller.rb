class ItemsController < ApplicationController

    def index
        items = Item.all 
        render json: ItemSerializer.new(items)
    end
    
    
    def create
        item = Item.new(item_params)
        if item.save
            render json: ItemSerializer.new(item)
        else
            p item.errors.full_messages
            render json: item.errors, status: :unprocessable_entity
        end
    end 
   
    def update
        item = Item.find(params[:id])
        item.update(item_params)
        render json: ItemSerializer.new(item)
    end
    
    def destroy
        item = Item.find(params[:id])
        item.destroy
        render json: ItemSerializer.new(item)
        
    end

    private

    def item_params
        params.require(:item).permit(:category, :brand, :season, :color, :image, :closet_id)
    end
end  
      
    

