# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Users

users = [
  ['stefan.huska+customer@gmail.com', '123456'],
  ['stefan.huska+operator@gmail.com', '123456'],
]

users.each do |email, password|
  u = User.create!(
    email: email,
    password: password
  )
  u.confirm
end

# TransactionCategory

data = [
  ['+1 bod za kávu', 1],
  ['Uplatniť kávu zadarmo', -5]
]

data.each do |name, default_amount|
  TransactionCategory.create!(
    name: name,
    default_amount: default_amount
  )
end
