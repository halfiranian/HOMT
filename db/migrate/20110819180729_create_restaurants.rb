class CreateRestaurants < ActiveRecord::Migration
  def self.up
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.text :contact_details
      t.integer :longitude
      t.integer :latitude
      t.boolean :tips
      t.boolean :moderated
      t.text :correspondence
      t.integer :chain_id

      t.timestamps
    end
  end

  def self.down
    drop_table :restaurants
  end
end
