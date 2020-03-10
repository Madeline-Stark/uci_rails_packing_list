class ItemsController < ApplicationController
    before_action :set_item, only: [:show, :edit, :update, :destroy]

    def index 
        @items = Item.all
    end 

    def show
        
    end

    def new 
        @item = Item.new
    end

    def edit
        
    end

    def update

    end

    def destroy
        @item.destroy
        redirect_to items_path
    end

    private 

    def set_item
        @item = Item.find(params[:id])
    end

end
