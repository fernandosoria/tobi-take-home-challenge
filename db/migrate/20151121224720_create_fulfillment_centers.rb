class CreateFulfillmentCenters < ActiveRecord::Migration
  def change
    create_table :fulfillment_centers do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone

      t.timestamps null: false
    end
  end
end
