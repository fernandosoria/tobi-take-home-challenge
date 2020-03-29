class PopulateCentersSchema < ActiveRecord::Migration
  def change
    FulfillmentCenter.create!(
      :name => 'Warehouse West',
      :address => '1234 Main Street',
      :city => 'San Francisco',
      :state => 'CA',
      :zip => '94080',
      :phone => '9876543210'
    )

    FulfillmentCenter.create!(
      :name => 'Warehouse East',
      :address => '4321 Second Ave',
      :city => 'New York',
      :state => 'NY',
      :zip => '10213',
      :phone => '8765432109'
    )
  end
end
