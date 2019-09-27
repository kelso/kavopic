class Operator::TransactionsController < ApplicationController
  before_action :authenticate_operator!
  layout 'operator'

  before_action :find_customer, only: [:new, :create]

  def index
    @transactions = current_operator.transactions.includes(:customer).order(created_at: :desc)
  end

  def new
    @transaction = @customer.transactions.build
  end

  def create
    @transaction = @customer.transactions.build transaction_params
    @transaction.operator = current_operator
    @transaction.amount = @transaction.transaction_category.default_amount

    if @transaction.save
      redirect_to operator_transactions_url
    else
      render :new
    end
  end

  private

  def find_customer
    @customer = Customer.find(params[:customer_id])
  end

  def transaction_params
    params.require(:transaction).permit(:transaction_category_id)
  end
end
