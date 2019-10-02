class Customer::DashboardsController < ApplicationController
  before_action :authenticate_customer!
  layout 'customer'

  def show
  end
end
