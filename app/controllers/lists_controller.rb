class ListsController < ApplicationController
  before_action :find_list, only: [:edit, :update, :show, :delete]


  def new
    @list = List.new
    2.times {@list.items.build}
  end

  def create
    binding.pry
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else 
      render :new 
    end
  end

  def edit
  end

  def update
    if @list.update(list_params)
      redirect_to list_path(@list)
    else 
      render :edit 
    end
  end

  def delete
  end

  def index
    @lists = List.all
  end

  def show
  end

  private

  def list_params
    params.require(:list).permit(:name, :items_attributes => [:name, :quantity])
  end 

  def find_list
    @list = List.find(params[:id])
  end

end
