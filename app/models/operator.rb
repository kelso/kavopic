class Operator < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable,
         :lockable,
         :trackable

  has_many :transactions
end
