class Admin::OperatorOrganizationsController < ApplicationController
  before_action :authenticate_admin!
  before_action :find_organization, only: [:index, :new, :create, :destroy]
  layout 'admin'

  def index
    @operator_organizations = @organization.operator_organizations
  end

  def new
    @operator_organization = @organization.operator_organizations.build
  end

  def create
    @operator_organization = @organization.operator_organizations.build operator_organization_params
    if @operator_organization.save
      redirect_to [:admin, @organization, :operator_organizations]
    else
      render :new
    end
  end

  def destroy
    @operator_organization = @organization.operator_organizations.find params[:id]
    @operator_organization.destroy
    redirect_to [:admin, @organization, :operator_organizations]
  end

  private
  def find_organization
    @organization = Organization.find params[:organization_id]
  end

  def operator_organization_params
    params.require(:operator_organization).permit(:operator_id, :organization_manager)
  end
end
