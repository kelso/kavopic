class Operator::TransactionsController < ApplicationController
  before_action :authenticate_user!

  # TODO authorize user is operator

  before_action :find_user, only: [:new, :create]

  def index
    @transactions = Transaction.created_by(current_user).order(created_at: :desc)
  end

  def new
    @transaction = @user.transactions.build
  end

  def create
    @transaction = @user.transactions.build transaction_params
    @transaction.created_by = current_user
    @transaction.amount = @transaction.transaction_category.default_amount

    if @transaction.save
      redirect_to operator_transactions_url
    else
      render :new
    end
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end

  def transaction_params
    params.require(:transaction).permit(:transaction_category_id)
  end
end
