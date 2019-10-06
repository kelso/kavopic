class Admin::OrganizationsController < ApplicationController
  before_action :authenticate_admin!
  before_action :find_organization, only: [:show, :edit, :update]
  layout 'admin'

  def index
    @organizations = Organization.order(created_at: :desc)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def find_organization
  end

  def organization_params
  end
end
