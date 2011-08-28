class ChangeLatLngtoFloat < ActiveRecord::Migration
  def self.up
    change_table :restaurants do |t|
      t.change :latitude, :float
      t.change :longitude, :float
    end
  end

  def self.down
    change_table :restaurants do |t|
      t.change :latitude, :integer
      t.change :longitude, :integer
    end
  end
end
