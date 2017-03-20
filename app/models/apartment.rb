class Apartment < ActiveRecord::Base
  geocoded_by :full_address
  after_validation :geocode

  def full_address
    self.aptstreet1 + ' ' + self.aptstreet2 + ' ' + self.city + ' ' + self.state + ' ' + self.postal_code + ' ' + self.country
  end

end
