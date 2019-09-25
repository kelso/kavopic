class Customer::DashboardsController < ApplicationController
  before_action :authenticate_user!

  def show
    # URL for direct access into admin
    @url = url_for(new_operator_user_transaction_url(current_user.id))

    qrcode = RQRCode::QRCode.new(@url)

    @qr_code = qrcode.as_svg(
      offset: 0,
      color: '000',
      shape_rendering: 'crispEdges',
      module_size: 4,
      standalone: true
    )
  end
end
