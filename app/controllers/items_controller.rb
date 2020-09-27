class ItemsController < ApplicationController

    def index
        items = Item.all
        render json: ItemSerializer.new(items)
    end

    def show
        item = Item.find(params[:id])
        render json: ItemSerializer.new(item)
    end

    def create
        item = Item.new(item_params)
        if item.save
            render json: ItemSerializer.new(item)
        else
            render json: {error: 'could not be created'}
        end
    end

    def destroy
        item = Item.find(params[:id])
        item.destroy
        render json: {message: "Deleted #{item.name} Successfully !"}
    end

    def update
        item = Item.find(params[:id])
        item.update(item_params)
        render json: ItemSerializer.new(item)
    end

    private

    def item_params
        params.require(:item).permit(:name, :description, :price, :category_name)
    end





    
end
