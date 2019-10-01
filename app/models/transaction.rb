class Transaction < ApplicationRecord
  belongs_to :customer
  belongs_to :operator
  belongs_to :transaction_category

  scope :created_by, -> (user) { where(created_by: user) }
  scope :for_realtime_admin_dashboard, -> { includes(:customer, :operator, :transaction_category).limit(100).order(created_at: :desc) }
end
