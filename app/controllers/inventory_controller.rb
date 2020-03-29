class InventoryController < ApplicationController

  def index
    load_from_scan if params[:scan]
  end

  def edit
    @inventory = Inventory.find(params[:id])
  end

  def update
    @inventory = Inventory.find(params[:id])

    if @inventory.update_attributes(inventory_params)
      redirect_to root_path, notice: "Inventory sucessfully saved."
    else
      render :new, error: "There was an error saving your inventory. Please try again."
    end
  end

  private

  def load_from_scan
    if params[:scan] =~ Location::REGEXP_MATCH
      @location = Location.find_by_name(params[:scan])
      @inventories = Inventory.at_location(@location)
    else
      @product = Product.find_by_code(params[:scan])
      @inventories = Inventory.of_product(@product)
    end
  end

  def inventory_params
    params.require(:inventory).permit(:fulfillment_center_id)
  end
end
