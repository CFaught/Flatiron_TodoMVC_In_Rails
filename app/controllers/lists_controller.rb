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
      render :index
    end
  end

  def show
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
