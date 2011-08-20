class AddGmapColumnToRestaurant < ActiveRecord::Migration
  def self.up
    add_column :restaurants, :gmaps, :boolean
  end

  def self.down
    remove_column :restaurants, :gmaps
  end
end
