class ItemsController < ApplicationController
    def show
        @items = Items.find(params[:id])
       
    end

    def index
        @items = Items.all    
    end

    def new
        @items = Items.new
    end

    def edit
        @items = Items.find(params[:id])
    end

    def create
        @items = Items.new(params.require(:items).permit(:title))
        if @items.save
            flash[:notice] = "Item was addded successfully to the kitchen." 
            redirect_to @items
        else
            render 'new'
        end
    end

    def update
        @items = Items.find(params[:id])
        if @items.update(params.require(:items).permit(:title))
            flash[:notice] = "Item was updated successfully to the kitchen." 
            redirect_to @items
        else
            render 'edit'
        end
    end

    def destroy
        @items = Items.find(params[:id])
        @items.destroy
        redirect_to item_path
        
    end
end 