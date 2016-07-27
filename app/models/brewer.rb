class Brewer < ActiveRecord::Base


  # Add latitude and longitude values based on the adress
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  # Check if the brewery is open today
   def open_today
    @today = Date.today.strftime("%A")

    if self.open.include?(@today)
      true
    else
      false
    end
  end

end
