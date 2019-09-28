class Operator < ApplicationRecord
  include FullName
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable,
         :lockable,
         :trackable

  has_many :transactions
end
