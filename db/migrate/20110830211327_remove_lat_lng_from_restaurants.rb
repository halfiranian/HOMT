class RemoveLatLngFromRestaurants < ActiveRecord::Migration
  def self.up
    remove_column :restaurants, :latitude
    remove_column :restaurants, :longitude
    add_column :restaurants, :latitude, :float
    add_column :restaurants, :longitude, :float
  end

  def self.down

  end
end
