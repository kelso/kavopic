class Admin::OperatorsController < ApplicationController
  before_action :authenticate_admin!
  before_action :find_operator, only: [:show, :edit, :update]
  layout 'admin'

  def index
    @operators = Operator.order(created_at: :desc)
  end

  def show
  end

  def edit
  end

  def update
    if @operator.update operator_params
      redirect_to admin_operators_url, notice: 'Operátor bol uložený.'
    else
      render :edit
    end
  end

  private

  def operator_params
    params.require(:operator).permit(:first_name, :last_name)
  end

  def find_operator
    @operator = Operator.find params[:id]
  end
end
