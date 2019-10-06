class Customer::OrganizationsController < ApplicationController
  before_action :authenticate_customer!
  layout 'customer'

  def index
    @organizations = Organization.order(created_at: :desc)
  end
end
