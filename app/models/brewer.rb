class Brewer < ActiveRecord::Base


  # Add latitude and longitude values based on the adress
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

end
