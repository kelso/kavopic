class Customer::OrganizationsController < ApplicationController
  before_action :authenticate_customer!
  layout 'customer'

  def index
    # TODO:
    # @organizations = Organization.all
  end
end
