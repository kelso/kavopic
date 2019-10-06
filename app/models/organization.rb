class Organization < ApplicationRecord
  extend Geocoder::Model::ActiveRecord
  validates :name, presence: true
  after_validation :geocode
  geocoded_by :address

  def address
    [street, city, country].compact.join(', ')
  end
end
