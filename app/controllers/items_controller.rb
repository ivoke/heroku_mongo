class ItemsController < ApplicationController

  def index
    @items = Item.all.to_a
  end

  def show
    @item = resource
  end

  def new
    @item = Item.new
  end

  def edit
    @item = resource
  end

  def create
    @item = Item.new(params[:item])

    if @item.save
      redirect_to @item, notice: 'Item was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @item = resource

    if @item.update_attributes(params[:item])
      redirect_to @item, notice: 'Item was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    resource.destroy
    redirect_to items_url
  end

  protected

  def resource
    Item.find(params[:id])
  end


end