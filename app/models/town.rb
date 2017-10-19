class Town < ActiveRecord::Base 
   before_validation :load_position
  
private
  
  def load_position
   places = Nominatim.search(nom).limit(1)
    if places.first
      self.latitude = places.first.lat
      self.longitude = places.first.lon
    end
  end
end
