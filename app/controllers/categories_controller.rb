class CategoriesController < ApplicationController

    def index 
       categories = Category.all 

       options = {
           include: [:items]
       }
       render json: CategorySerializer.new(categories, options)
    end 

    
    def show 
       category = Category.find(params[:id])
       render json: category
    end 

end
