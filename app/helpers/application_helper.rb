module ApplicationHelper
  def render_account_switch
    render 'layouts/shared/account_switch' if account_switch_enabled?
  end

  def account_switch_enabled?
    count = [
      customer_signed_in?,
      operator_signed_in?,
      admin_signed_in?
    ].count(true)

    count > 1
  end
end
