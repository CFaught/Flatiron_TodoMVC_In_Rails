class ItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @item = @list.items.build(item_params)
    if @item.save
      redirect_to list_path(@list)
    else
      render "lists/show"
    end
  end

  # PATCH - /lists/:list_id/items/:id
  def update
    @list = List.find_by(id: params[:list_id])
    @item = @list.items.find_by(id: params[:id])
    @item.update(item_params)

    redirect_to list_path(@list)
  end

  # DELETE - /lists/:list_id/items/:id
  def destroy
    @list = List.find_by(id: params[:list_id])
    @item = @list.items.find_by(id: params[:id])
    @item.destroy

    redirect_to list_path(@list)
  end

  private
  def item_params
    params.require(:item).permit(:description, :status)
  end
end
