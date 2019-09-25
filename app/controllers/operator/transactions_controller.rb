class Operator::TransactionsController < ApplicationController
  before_action :authenticate_user!

  # TODO authorize user is operator

  before_action :find_user, only: [:new, :create]

  def new
    @transaction = @user.transactions.build
  end

  def create
    @transaction = @user.transaction.build transaction_params
    if @transaction.save
      redirect_to root_url
    else
      render :new
    end
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end

  def transaction_params
    params.require(:transaction).permit(:amount)
  end
end
