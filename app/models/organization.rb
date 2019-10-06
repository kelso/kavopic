class Organization < ApplicationRecord
  extend Geocoder::Model::ActiveRecord
  validates :name, presence: true
  before_create :geocode
  geocoded_by :address

  def address
    [street, city, country].compact.join(', ')
  end
end
