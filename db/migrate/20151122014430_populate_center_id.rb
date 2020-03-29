class PopulateCenterId < ActiveRecord::Migration
  def change
    Inventory.update_all(:fulfillment_center_id => FulfillmentCenter.first.id)
  end
end
