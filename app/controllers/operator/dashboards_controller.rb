class Operator::DashboardsController < ApplicationController
  before_action :authenticate_operator!
  layout 'operator'

  def show
  end
end
