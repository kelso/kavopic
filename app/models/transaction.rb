class Transaction < ApplicationRecord
  belongs_to :customer
  belongs_to :operator
  belongs_to :transaction_category

  scope :created_by, -> (user) { where(created_by: user) }
end
