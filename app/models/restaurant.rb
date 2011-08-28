class Restaurant < ActiveRecord::Base
  acts_as_gmappable :process_geocoding => false
  
  geocoded_by :address_uk
  
  after_validation :geocode
  
  def address_uk
    [address, " UK"].compact.join(', ')
  end
  
  def gmaps4rails_infowindow
    "#{self.name}"
  end
  
end
