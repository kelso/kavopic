class Customer::OrganizationsController < ApplicationController
  before_action :authenticate_customer!
  layout 'customer'

  def index
    @organizations = Organization.geocoded.order(created_at: :desc)
    @geographic_center = Geocoder::Calculations.geographic_center(@organizations)
  end

  def show
    @organization = Organization.find params[:id]
  end
end
