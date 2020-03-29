class FulfillmentCenterController < ApplicationController
  def index
    @centers = FulfillmentCenter.all
  end

  def new
    @center = FulfillmentCenter.new
  end

  def create
    @center = FulfillmentCenter.new(center_params)

    if @center.save
      redirect_to centers_show_path(@center), notice: "Center sucessfully saved."
    else
      render :new, error: "There was an error saving your center. Please try again."
    end
  end

  def edit
    @center = FulfillmentCenter.find(params[:id])
  end

  def update
    @center = FulfillmentCenter.find(params[:id])

    if @center.update_attributes(center_params)
      redirect_to centers_show_path(@center), notice: "Center sucessfully updated."
    else
      render :new, error: "There was an error saving your center. Please try again."
    end
  end

  def show
    @center = FulfillmentCenter.find(params[:id])
  end

  def destroy
    @center = FulfillmentCenter.find(params[:id])
    name = @center.name

    if @center.destroy
      redirect_to centers_path, notice: "\"#{name}\" sucessfully deleted."
    else
      redirect_to centers_path, error: "There was an error deleting your center. Please try again."
    end
  end

  private

  def center_params
    params.require(:fulfillment_center).permit(:name, :address, :city, :state, :zip, :phone)
  end
end
