class Pooper < ActiveRecord::Base
  geocoded_by :interesection   # can also be an IP address
after_validation :geocode          # auto-fetch coordinates
  
end

