class Operator < ApplicationRecord
  include FullName
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable,
         :lockable,
         :trackable

  has_many :transactions
  has_many :operator_organizations
  has_many :organizations, through: :operator_organizations
end
