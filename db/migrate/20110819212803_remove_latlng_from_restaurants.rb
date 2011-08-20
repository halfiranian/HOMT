class RemoveLatlngFromRestaurants < ActiveRecord::Migration
  def self.up
    remove_column :restaurants, :longitude
    remove_column :restaurants, :latitude
    add_column :restaurants, :lat, :float
    add_column :restaurants, :lng, :float
  end

  def self.down
    add_column :restaurants, :longitude, :string
    add_column :restaurants, :latitude, :string
    remove_column :restaurants, :lat
    remove_column :restaurants, :lng 
  end
end
