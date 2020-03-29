class AddFulfillmentCenterIdToInventory < ActiveRecord::Migration
  def change
    add_column :inventories, :fulfillment_center_id, :integer
  end
end
