class InventoriesController < ApplicationController
  before_action :set_inventory, only: [:show, :edit, :update, :destroy]

  def index
    @inventories = Inventory.all
  end

  def show
  end

  def new
    @inventory = Inventory.new
  end

  def edit
  end

  def create
    @inventory = Inventory.new(inventory_params)
    if @inventory.save
      redirect_to @inventory, notice: 'Inventory was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @inventory.update(inventory_params)
      redirect_to @inventory, notice: 'Inventory was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @inventory.destroy
      redirect_to @inventory
  end

  private
  def set_inventory
    @inventory = Inventory.find(params[:id])
  end
  def inventory_params
    params.require(:inventory).permit(:title, :description, :quantity)
  end

end
