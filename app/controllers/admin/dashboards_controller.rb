class Admin::DashboardsController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'

  def show
  end
end
