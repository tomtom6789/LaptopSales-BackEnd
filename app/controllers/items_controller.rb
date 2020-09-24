class ItemsController < ApplicationController

    def index 
        items = Item.all 
        render json: ItemSerializer.new(items)
    end 

    
    def create 
        item = Item.new(item_params)
        item.category_id = 1
        if item.save 
            render json: ItemSerializer.new(item)
        else 
            render json: {error: 'unsucessfully created'}
        end 
    end 

    def update 
        item = Item.find(params[:id])
        item.update(item_params)
        render json: {message: "Successfully updated to #{item.name}"}
    end 

    private 

    def item_params
        params.require(:item).permit(:name, :description, :price)
    end 



    
end
