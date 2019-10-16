class Admin::TransactionsController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'

  def index
    @transactions = Transaction.includes(:customer, :operator, :organization, :transaction_category).order(created_at: :desc)
  end

  def destroy
    @transaction = Transaction.find params[:id]
    @transaction.destroy
    redirect_to admin_transactions_url, notice: 'Transakcia bola odstránená.'
  end
end
