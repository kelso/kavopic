class Admin::DashboardsController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'

  def show
    @transactions = Transaction.for_realtime_admin_dashboard
  end
end
