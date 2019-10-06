class Organization < ApplicationRecord
  extend Geocoder::Model::ActiveRecord
  validates :name, presence: true
  geocoded_by :address

  def address
    [street, city, country].compact.join(', ')
  end
end
