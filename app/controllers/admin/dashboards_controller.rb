class Admin::DashboardsController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'

  def show
  end

  # for now as an action
  def realtime
    @transactions = Transaction.for_realtime_admin_dashboard
  end
end
