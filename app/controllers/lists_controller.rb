class ListsController < ApplicationController
  before_action :set_list, only: [:show]
  def index
    @lists = List.all
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to root_path
    else
      @lists = List.all
      render :index
    end
  end

  def show
    @list = List.find(params[:id])
    @item = Item.new
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
