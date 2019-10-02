module Customer::DashboardsHelper
  def qr_code(customer)
    # URL for direct access into admin
    @url = url_for(new_operator_customer_transaction_url(customer.id))

    qrcode = RQRCode::QRCode.new(@url)

    svg = qrcode.as_svg(
      offset: 0,
      color: '000',
      shape_rendering: 'crispEdges',
      module_size: 10
    )

    "data:image/svg+xml;base64,#{Base64.encode64(svg)}"
  end
end
