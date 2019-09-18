class Customer::DashboardsController < ApplicationController
  before_action :authenticate_customer!

  def show
  end
end
