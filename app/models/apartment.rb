class Apartment < ActiveRecord::Base
  belongs_to :user #add this line
  geocoded_by :full_address
  after_validation :geocode
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates_attachment :image, presence: true,
    content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }, size: { in: 0..10.megabytes }
  devise :omniauthable, :omniauth_providers => [:twitter]
  validates :user, presence: true
  resourcify

  def full_address
    self.aptstreet1 + ' ' + self.aptstreet2 + ' ' + self.city + ' ' + self.state + ' ' + self.postal_code + ' ' + self.country
  end

end
