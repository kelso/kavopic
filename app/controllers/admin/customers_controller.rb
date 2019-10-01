class Admin::CustomersController < ApplicationController
  before_action :authenticate_admin!
  before_action :find_customer, only: [:show, :edit, :update]
  layout 'admin'

  def index
    @customers = Customer.order(created_at: :desc)
  end

  def show
  end

  def edit
  end

  def update
    if @customer.update customer_params
      redirect_to admin_customer_url(@customer), notice: 'Zákazník bol uložený.'
    else
      render :edit
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name)
  end

  def find_customer
    @customer = Customer.find params[:id]
  end
end
