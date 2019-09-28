class Customer < ApplicationRecord
  include FullName
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable,
         :lockable,
         :trackable,
         :omniauthable

  has_many :transactions

  def points_sum
    transactions.sum(:amount)
  end
end
