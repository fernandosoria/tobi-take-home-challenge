class PopulateSecondCenter < ActiveRecord::Migration
  def change

    locations = Array.new

    # create locations
    (1..15).each do |row|
      (1..15).each do |rack|
        (1..6).each do |shelf|
          locations << Location.create!(:row => row, :rack => rack, :shelf => shelf)
        end
      end
    end

    # Get id second fulfillment center
    center = FulfillmentCenter.last

    Product.all.each do |product|
      locations.sample(4).each do |location|
        # create 1-5 inventory rows in each location
        (rand(5)+1).times do
          Inventory.create!(:product => product, :location => location, :fulfillment_center => center)
        end
      end
    end

  end
end
