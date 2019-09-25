class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :created_by, class_name: 'User', foreign_key: :created_by_id
  belongs_to :transaction_category

  scope :created_by, -> (user) { where(created_by: user) }
end
