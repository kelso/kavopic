class Admin::OrganizationsController < ApplicationController
  before_action :authenticate_admin!
  before_action :find_organization, only: [:show, :edit, :update, :destroy, :geocode]
  layout 'admin'

  def index
    @organizations = Organization.includes(:transactions).order(created_at: :desc)
  end

  def show
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new organization_params
    if @organization.save
      redirect_to [:admin, @organization], notice: 'Prevádzka bola pridaná'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @organization.update organization_params
      redirect_to [:admin, @organization], notice: 'Prevádzka bola aktualizovaná.'
    else
      render :edit
    end
  end

  def destroy
    @organization.destroy
    redirect_to admin_organizations_url, notice: 'Prevádzka bola odstránená.'
  end

  def geocode
    @organization.geocode
    @organization.save!
    redirect_to [:admin, @organization]
  end

  private

  def find_organization
    @organization = Organization.find params[:id]
  end

  def organization_params
    params.require(:organization).permit(
      :name,
      :street,
      :city,
      :country,
      :latitude,
      :longitude,
    )
  end
end
