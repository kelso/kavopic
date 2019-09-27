class Customer::DashboardsController < ApplicationController
  before_action :authenticate_customer!
  layout 'customer'

  def show
    # URL for direct access into admin
    @url = url_for(new_operator_customer_transaction_url(current_customer.id))

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
