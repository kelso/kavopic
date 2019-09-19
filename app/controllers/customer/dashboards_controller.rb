class Customer::DashboardsController < ApplicationController
  before_action :authenticate_user!

  def show
    qrcode = RQRCode::QRCode.new("http://github.com/")

    @qr_code = qrcode.as_svg(
      offset: 0,
      color: '000',
      shape_rendering: 'crispEdges',
      module_size: 8,
      standalone: true
    )
  end
end
