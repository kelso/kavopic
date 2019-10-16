class Organization < ApplicationRecord
  extend Geocoder::Model::ActiveRecord
  validates :name, presence: true
  before_create :geocode
  geocoded_by :address
  has_many :transactions
  has_many :operator_organizations
  has_many :operators, through: :operator_organizations

  def address
    [street, city, country].compact.join(', ')
  end
end
