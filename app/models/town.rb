class Town < ActiveRecord::Base 
   before_validation :load_position 
public
  def load_position
    places = Nominatim.search(nom).limit(1)
    self.latitude = places.first.latitude
    self.longitude = places.first.longitude
   end
end
  

  

